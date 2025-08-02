import curl
import json
import libnx

class SharedState {
	nonisolated(unsafe) static let shared = SharedState()
	var server: WebServer = .shared
	var web: WebCommonConfig = .init()
}

@main
struct SwitchRPCConfig {
	static func main() {

		consoleInit(nil)
		defer { consoleExit(nil) }

		// networking
		socketInitializeDefault()
		defer { socketExit() }

//		nxlinkStdio()

		// init curl
		Request.curlInit()
		defer { Request.curlCleanup() }

		// config game pad
		padConfigureInput(1, HidNpadStyleSet_NpadStandard.rawValue)

		var pad: PadState = .init()
		padInitializeDefault(&pad)

		print(
			"""
			SwitchRPC

				Press (A) to log into Discord

				Press (+) to exit

			By llsc12
			"""
		)

		// push console frame
		consoleUpdate(nil)

		let server = WebServer.shared

		let discord = Discord()

		var codeChallenge = ""
		var state = ""
		var codeVerifier = ""

		while appletMainLoop() {
			padUpdate(&pad)

			if padGetButtonsDown(&pad) & UInt64(HidNpadButton_Plus.rawValue) != 0 {
				break
			}

			if padGetButtonsDown(&pad) & UInt64(HidNpadButton_A.rawValue) != 0 {
				// --- Start server ---
				let serverWork: ThreadFunc = { conf in
					let server = SharedState.shared.server
					server.start()
					while true {
						if !server.serveLoop() {
							break
						}
						svcSleepThread(1000)
					}

					// server stopped, maybe we got our data
					webConfigRequestExit(&SharedState.shared.web)
					server.stop()  // the server is stopped but we can always just double check lmao
					threadExit()
				}
				var thread: Thread = .init()
				// -----------------------------------

				// Generate code challenge and state
				let codeVerifierBytes = Crypto.randomBytes(count: 64) ?? []
				codeVerifier = Crypto.base64urlEncode(codeVerifierBytes)
				codeChallenge = Crypto.base64urlEncode(
					Crypto.sha256([UInt8](codeVerifier.utf8))
				)
				state = Crypto.hexEncode(Crypto.randomBytes(count: 16) ?? [])

				let deviceIP = server.getIPAddress()

				// urls
				let authURL =
					"https://discord.com/oauth2/authorize?client_id=\(DiscordConsts.ClientID)&response_type=code&scope=\(Request.URLEncode(DiscordConsts.scope))&code_challenge=\(codeChallenge)&code_challenge_method=\("S256")&state=\(state)&redirect_uri=\(Request.URLEncode(DiscordConsts.redirectURI))"

				let url =
					"https://static.llsc12.me/discord?ip=\(deviceIP)&auth=\(Request.URLEncode(authURL))"

				// Create web page with QR code for user
				SharedState.shared.web = .init()
				let state = SharedState.shared
				var reply = WebCommonReply()
				_ = webPageCreate(
					&state.web,
					"https://static.llsc12.me/discord/qr?url=\(Request.URLEncode(url))",
				)
				webConfigSetJsExtension(&state.web, true)
				webConfigSetPageCache(&state.web, true)
				webConfigSetBootLoadingIcon(&state.web, true)
				webConfigSetWhitelist(&state.web, ".*")
				_ = threadCreate(&thread, serverWork, nil, nil, 0x4000, 0x3B, 2)
				threadStart(&thread)
				_ = webConfigShow(&state.web, &reply)  // this blocks until the user closes the web page, but other thread will close it after 5 seconds to free this one
//				var exitReason = WebExitReason_UnknownE
//				webReplyGetExitReason(&reply, &exitReason)
				// using exitreason isnt working no clue why, so ill check if server is still running instead
				if state.server.isRunning {
					// webpage closed by user or timeout maybe?
					threadPause(&thread)  // i dont think you can cancel a thread, so we just pause it and cleanup
					threadClose(&thread) // cleanup
					server.stop()  // stop the server
					
					print("Process was interrupted or timed out, stopping...\n")
					continue
				} else {
					// just in case, wait for the thread to finish
					// server is stopped, so we will wait for it to finish
					threadWaitForExit(&thread)  // just in case, wait for the thread to finish
				}
				threadClose(&thread)  // cleanup

				let dcode = state.server.code
				let dstate = state.server.state
				
				print("\nReceived auth data, retrieving tokens...\n\n")
				
				if let code = dcode{
					do {
						let auth = try discord.authenticate(code: code, codeVerifier: codeVerifier)
												
						let me = try discord.me()
						let username = me["user"]["username"].string ?? "Unknown User"
						print("Hello, \(username)!")
					} catch {
						print("Failed: \(error.errorDescription ?? "Unknown error")")
					}
				}
			}

			consoleUpdate(nil)  // push new frame
		}
	}
}
