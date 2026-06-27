import curl
import json
import libnx

let sysmoduleTitleId: UInt64 = 0x3120000000000092

@main
struct App: NXApp {
	nonisolated(unsafe) static let discord = Discord()
	nonisolated(unsafe) static let server: WebServer = .shared
	nonisolated(unsafe) static var webConfig: WebCommonConfig = .init()

	var menu: Menu = Menu()

	mutating func runloop(_ ctx: inout RunLoopContext) {  // runs in a loop, calling ctx.exit() ends the app
		ctx.pad.update()
		menu.setupIfNeeded()
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
		pmshellInitialize()
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
		pmshellExit()
		Request.curlCleanup()
		socketExit()
		consoleExit(nil)
	}
}

/// One selectable row in the profile menu (a Switch user, or the default).
struct ProfileEntry {
	var uid: String        // switch_uid string
	var nickname: String   // display name
	var isDefault: Bool    // true for the "Default (all profiles)" pseudo-entry
}

struct Menu {
	var wasInvalidated = true  // redraw flag

	// Menu state variables
	var selectedIndex = 0
	var didSetup = false

	/// Switch profiles plus the trailing default pseudo-entry.
	var entries: [ProfileEntry] = []
	/// Current Switch -> Discord links, for status display.
	var links: [Link] = []

	var logs: [String] = [] {
		didSet {
			// limit to the last 10 logs
			if logs.count > 10 {
				logs.removeFirst(logs.count - 10)
			}
		}
	}

	// MARK: - Setup / reload

	mutating func setupIfNeeded() {
		if didSetup { return }
		didSetup = true
		ProfileStore.migrateLegacyIfNeeded()
		reload()
	}

	mutating func reload() {
		self.links = ProfileStore.load()
		self.entries = Menu.enumerateProfiles()
		// keep the selection in range (entries + trailing "Exit app")
		let count = entries.count + 1
		if selectedIndex >= count { selectedIndex = 0 }
		self.wasInvalidated = true
	}

	/// Build the profile list: the Switch users (read from switchrpc_users.json,
	/// which the sysmodule writes because the config app can't read the account
	/// service when launched as an applet), then the "Default" pseudo-entry.
	static func enumerateProfiles() -> [ProfileEntry] {
		var result: [ProfileEntry] = []

		let users = ProfileStore.loadSwitchUsers()
		for u in users {
			result.append(
				ProfileEntry(uid: u.uid, nickname: u.nickname, isDefault: false)
			)
		}

		// Fallback: if that file isn't present yet (sysmodule hasn't run), try the
		// account service directly — only works if launched in application mode.
		if users.isEmpty {
			var uids = [AccountUid](repeating: AccountUid(), count: 8)
			var total: Int32 = 0
			if accountListAllUsers(&uids, 8, &total).succeeded {
				var i = 0
				while i < Int(total) && i < uids.count {
					let uid = uids[i]
					result.append(
						ProfileEntry(
							uid: ProfileStore.uidToString(uid),
							nickname: getNickname(uid) ?? "Unknown",
							isDefault: false
						)
					)
					i += 1
				}
			}
		}

		result.append(
			ProfileEntry(
				uid: ProfileStore.defaultUid,
				nickname: "Default (all profiles)",
				isDefault: true
			)
		)
		return result
	}

	/// Read a Switch user's nickname via accountGetProfile/accountProfileGet.
	static func getNickname(_ uid: AccountUid) -> String? {
		var profile = AccountProfile()
		guard accountGetProfile(&profile, uid).succeeded else { return nil }
		defer { accountProfileClose(&profile) }
		var base = AccountProfileBase()
		guard accountProfileGet(&profile, nil, &base).succeeded else { return nil }
		let nickname = withUnsafeBytes(of: base.nickname) { rawPtr -> String in
			let buffer = rawPtr.bindMemory(to: CChar.self)
			return String(cString: buffer.baseAddress!)
		}
		return nickname.isEmpty ? nil : nickname
	}

	/// Find the link for a given switch_uid, if any.
	func linkFor(_ uid: String) -> Link? {
		for link in links {
			if link.switchUid == uid { return link }
		}
		return nil
	}

	// MARK: - Input

	mutating func tick(_ ctx: inout RunLoopContext) {
		// Handle exit request
		if ctx.pad.wasButtonPressed(.plus) {
			ctx.exit()
			return
		}

		let count = entries.count + 1  // +1 for trailing "Exit app"

		// Move selection
		if ctx.pad.wasButtonPressed(.anyDown) {
			self.wasInvalidated = true
			selectedIndex = (selectedIndex + 1) % count
		}
		if ctx.pad.wasButtonPressed(.anyUp) {
			self.wasInvalidated = true
			selectedIndex = (selectedIndex - 1 + count) % count
		}

		// A: link/relink a profile, or exit on the trailing row
		if ctx.pad.wasButtonPressed(.a) {
			self.wasInvalidated = true
			if selectedIndex < entries.count {
				linkFlow(for: entries[selectedIndex], &ctx)
			} else {
				ctx.exit()
			}
		}

		// X: unlink a linked profile
		if ctx.pad.wasButtonPressed(.x) {
			if selectedIndex < entries.count {
				let entry = entries[selectedIndex]
				if linkFor(entry.uid) != nil {
					self.wasInvalidated = true
					unlink(entry)
				}
			}
		}
	}

	// MARK: - Link flow

	mutating func linkFlow(for entry: ProfileEntry, _ ctx: inout RunLoopContext) {
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

		App.server.codeChallenge = codeChallenge
		App.server.state = state
		App.server.code = nil  // clear any stale code from a previous attempt

		_ = threadCreate(&thread, serverWork, nil, nil, 0x4000, 0x3B, 2)
		threadStart(&thread)

		let url = "http://\(deviceIP):45601"

		// Render an on-device QR code for the pairing URL, with the URL printed
		// below as a fallback. (QRCode is owned by the QR agent.)
		consoleClear()
		print("\nLink \(entry.nickname) to Discord\n")
		if let matrix = QRCode.encode(url) {
			QRCode.render(matrix)
		}
		print("\nScan the QR code with your phone, or open this URL in a browser:\n")
		print(url)
		print("\nPress B to cancel.")
		consoleUpdate(nil)  // push new frame

		// Wait for the pairing callback, but let the user cancel with B or time
		// out, so the app never freezes if pairing is never completed.
		var waitedMs = 0
		let timeoutMs = 180_000  // 3 minutes
		while App.server.isRunning {
			ctx.pad.update()
			if ctx.pad.wasButtonPressed(.b) {
				App.server.stop()
				log("Pairing cancelled.", rd: true)
				break
			}
			if waitedMs >= timeoutMs {
				App.server.stop()
				log("Pairing timed out.", rd: true)
				break
			}
			Thread.sleep(for: .milliseconds(16))
			waitedMs += 16
		}

		threadWaitForExit(&thread)
		threadClose(&thread)  // cleanup

		let dcode = App.server.code

		// No code means the user cancelled or it timed out; just redraw.
		guard dcode != nil else {
			reload()
			return
		}
		guard App.server.state == state else {
			log("State mismatch, stopping...\n", rd: true)
			return
		}

		log("\nReceived auth data, retrieving tokens...", rd: true)

		if let code = dcode {
			do {
				try App.discord.authenticate(code: code, codeVerifier: codeVerifier)

				let user = try App.discord.meUser()
				let username = user.username.isEmpty ? "Unknown User" : user.username
				log("Hello, \(username)!")

				// upsert the link for the chosen switch_uid
				if let token = App.discord.auth?.refreshToken {
					let link = Link(
						switchUid: entry.uid,
						switchNickname: entry.nickname,
						discordId: user.id,
						discordUsername: username,
						refreshToken: token
					)
					ProfileStore.upsert(link)
					reload()
				}
			} catch {
				log("Failed: \(error.errorDescription ?? "Unknown error")")
			}
		}
	}

	mutating func unlink(_ entry: ProfileEntry) {
		ProfileStore.removeLink(switchUid: entry.uid)
		log("Unlinked \(entry.nickname)", rd: true)
		reload()
	}

	mutating func log(_ message: String, rd: Bool = false) {
		self.logs.append(message)
		if rd { self.forceRedraw() }
	}
}

extension Menu {
	mutating func draw() {
		print("\nSwitchRPC\n")
		print("Select a profile, then press A to link Discord.\n")

		for (i, entry) in self.entries.enumerated() {
			let selector = (i == self.selectedIndex) ? "-> " : "   "
			let status: String
			if let link = linkFor(entry.uid), !link.discordUsername.isEmpty {
				status = "Discord: \(link.discordUsername)"
			} else if linkFor(entry.uid) != nil {
				status = "Discord: linked"
			} else {
				status = "not linked"
			}
			print("  \(selector)\(entry.nickname)  [\(status)]")
		}

		// trailing "Exit app" row
		let exitIndex = self.entries.count
		let exitSelector = (self.selectedIndex == exitIndex) ? "-> " : "   "
		print("  \(exitSelector)Exit app")

		print("\n")
		print("A: link/relink    X: unlink    +: exit")
		print("\nBy llsc12\n")
		print("[ Logs ]\n")
		for log in self.logs {
			print(log)
		}
	}

	mutating func forceRedraw() {
		consoleClear()
		self.draw()
	}
}
