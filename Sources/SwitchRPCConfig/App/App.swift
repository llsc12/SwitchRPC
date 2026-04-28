import curl
import json
import libnx

@main
struct App: NXApp {
	nonisolated(unsafe) static let discord = Discord()
	nonisolated(unsafe) static let server: WebServer = .shared
	nonisolated(unsafe) static var webConfig: WebCommonConfig = .init()

	var menu: Menu = Menu()

	mutating func runloop(_ ctx: inout RunLoopContext) {  // runs in a loop, calling ctx.exit() ends the app
		ctx.pad.update()
		menu.tick(&ctx)

		if menu.wasInvalidated {
			consoleClear()
			menu.draw()
			consoleUpdate(nil)  // push new frame
			menu.wasInvalidated = false
		}

		Thread.sleep(for: .milliseconds(10))
	}

	func modulesInit(_ ctx: inout RunLoopContext) {
		consoleInit(nil)
		socketInitializeDefault()
		Request.curlInit()
		pmdmntInitialize()
		pminfoInitialize()
		nsInitialize()
		smInitialize()
		accountInitialize(AccountServiceType_Application)
		setsysInitialize()
		fsdevMountSdmc()

		ctx.pad.configure(1, .standard)
	}
	func modulesExit(_ ctx: inout RunLoopContext) {
		fsdevUnmountAll()
		fsExit()
		setsysExit()
		accountExit()
		smExit()
		nsExit()
		pminfoExit()
		pmdmntExit()
		Request.curlCleanup()
		socketExit()
		consoleExit(nil)
	}
}

struct Menu {
	var wasInvalidated = true  // redraw flag

	// Menu state variables
	var isLoggedIn = false
	var sysmoduleEnabled = false
	var selectedIndex = 0

	var logs: [String] = [] {
		didSet {
			// limit to the last 10 logs
			if logs.count > 10 {
				logs.removeFirst(logs.count - 10)
			}
		}
	}

	// Computed menu options depending on context
	var currentOptions: [String] {
		[
			isLoggedIn ? "Log out" : "Log in",
			sysmoduleEnabled ? "Disable sysmodule" : "Enable sysmodule",
			"Exit app",
			"[DEBUG] Get current process",
		]
	}

	mutating func tick(_ ctx: inout RunLoopContext) {
		// Handle exit request
		if ctx.pad.wasButtonPressed(.plus) {
			ctx.exit()
			return
		}
		
		// Move selection
		if ctx.pad.wasButtonPressed(.anyDown) {
			self.wasInvalidated = true
			selectedIndex = (selectedIndex + 1) % currentOptions.count
		}
		if ctx.pad.wasButtonPressed(.anyUp) {
			self.wasInvalidated = true
			selectedIndex =
				(selectedIndex - 1 + currentOptions.count) % currentOptions.count
		}

		// Select option
		if ctx.pad.wasButtonPressed(.a) {
			self.wasInvalidated = true
			switch selectedIndex {
			// log in/log out
			case 0: self.logIn()
			case 1: sysmoduleEnabled.toggle()
			case 2: ctx.exit()
			case 3: process()
			default: break
			}
		}
	}

	mutating func logIn() {
		//		 --- Start server ---
		let serverWork: ThreadFunc = { conf in
			App.server.start()
			while true {
				if !App.server.serveLoop() {
					break
				}
				Thread.sleep(for: .microseconds(100))
			}

			// server stopped, maybe we got our data
			webConfigRequestExit(&App.webConfig)
			App.server.stop()  // the server is stopped but we can always just double check lmao
			threadExit()
		}
		var thread: Thread = .init()
		// -----------------------------------

		// Generate code challenge and state
		let codeVerifierBytes = Crypto.randomBytes(count: 64) ?? []
		let codeVerifier = Crypto.base64urlEncode(codeVerifierBytes)
		let codeChallenge = Crypto.base64urlEncode(
			Crypto.sha256([UInt8](codeVerifier.utf8))
		)
		let state = Crypto.hexEncode(Crypto.randomBytes(count: 16) ?? [])

		let deviceIP = App.server.getIPAddress()

		// urls
		let authURL =
			"https://discord.com/oauth2/authorize?client_id=\(DiscordConsts.ClientID)&response_type=code&scope=\(Request.URLEncode(DiscordConsts.scope))&code_challenge=\(codeChallenge)&code_challenge_method=\("S256")&state=\(state)&redirect_uri=\(Request.URLEncode(DiscordConsts.redirectURI))"

		let url =
			"https://static.llsc12.me/discord?ip=\(deviceIP)&auth=\(Request.URLEncode(authURL))"

		// Create web page with QR code for user
		App.webConfig = .init()
		var reply = WebCommonReply()
		_ = webPageCreate(
			&App.webConfig,
			"https://static.llsc12.me/discord/qr?url=\(Request.URLEncode(url))",
		)
		webConfigSetJsExtension(&App.webConfig, true)
		webConfigSetPageCache(&App.webConfig, true)
		webConfigSetBootLoadingIcon(&App.webConfig, true)
		webConfigSetWhitelist(&App.webConfig, ".*")
		_ = threadCreate(&thread, serverWork, nil, nil, 0x4000, 0x3B, 2)
		threadStart(&thread)
		_ = webConfigShow(&App.webConfig, &reply)  // this blocks until the user closes the web page, but other thread will close it after 5 seconds to free this one
		//				var exitReason = WebExitReason_UnknownE
		//				webReplyGetExitReason(&reply, &exitReason)
		// using exitreason isnt working no clue why, so ill check if server is still running instead
		if App.server.isRunning {
			// webpage closed by user or timeout maybe?
			threadPause(&thread)  // i dont think you can cancel a thread, so we just pause it and cleanup
			threadClose(&thread)  // cleanup
			App.server.stop()  // stop the server

			log("Process was interrupted or timed out, stopping...", rd: true)
			return
		} else {
			// just in case, wait for the thread to finish
			// server is stopped, so we will wait for it to finish
			threadWaitForExit(&thread)  // just in case, wait for the thread to finish
		}
		threadClose(&thread)  // cleanup

		guard App.server.state == state else {
			log("State mismatch, stopping...\n", rd: true)
			return
		}
		let dcode = App.server.code

		log("\nReceived auth data, retrieving tokens...", rd: true)

		if let code = dcode {
			do {
				try App.discord.authenticate(code: code, codeVerifier: codeVerifier)

				let me = try App.discord.me()
				let username = me["user"]["username"].string ?? "Unknown User"
				log("Hello, \(username)!")

				// save token to file for later use
				if let token = App.discord.auth?.refreshToken {
					// save using fs module
					let path = "sdmc:/config/switchrpc/discord_token"
					if let file = fopen(path, "w") {
						fputs(token, file)
						fclose(file)
					}
					isLoggedIn = true
				}
			} catch {
				log("Failed: \(error.errorDescription ?? "Unknown error")")
			}
		}
	}

	mutating func process() {
		let data = Utilities.GetCurrentProcessData()
		log("app: \(data?.title ?? "No App Open")")
	}

	mutating func log(_ message: String, rd: Bool = false) {
		self.logs.append(message)
		if rd { self.forceRedraw() }
	}
}

extension Menu {
	mutating func draw() {
		print("\nSwitchRPC\n")
		for (i, line) in self.currentOptions.enumerated() {
			let selector = (i == self.selectedIndex) ? "-> " : "   "
			print("  \(selector)\(line)")
		}
		print("\n\n")
		print("By llsc12")
		print("\n")
		print(
			"[ Logs ]\n"
		)
		for log in self.logs {
			print(log)
		}

		print("\n\n\n\n\n                    yop")
	}

	mutating func forceRedraw() {
		consoleClear()
		self.draw()
	}
}
