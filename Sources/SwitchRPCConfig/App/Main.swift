import curl
import json
import libnx
import webserver

enum DiscordConsts {
	static let ClientID: UInt = 1_249_119_754_522_857_616
	static let redirectURI = "http://127.0.0.1:45601/callback"
	static let scope = "openid sdk.social_layer_presence"
}

@main
struct SwitchRPCConfig {
	static func main() {
		
		// why do we get to nil this ref?
		consoleInit(nil)
		defer { consoleExit(nil) }
		
		// networking
		socketInitializeDefault()
		defer { socketExit() }
		
		nxlinkStdio()
		
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
""")
		
		consoleUpdate(nil)  // push initial frame

		var codeChallenge = ""
		var state = ""
		var codeVerifier = ""

		while appletMainLoop() {
			padUpdate(&pad)
			
			if padGetButtonsDown(&pad) & UInt64(HidNpadButton_Plus.rawValue) != 0 {
				break
			}

			if padGetButtonsDown(&pad) & UInt64(HidNpadButton_A.rawValue) != 0 {
				// Generate code challenge and state
				let codeVerifierBytes = Crypto.randomBytes(count: 64) ?? []
				codeVerifier = Crypto.base64urlEncode(codeVerifierBytes)
				codeChallenge = Crypto.base64urlEncode(Crypto.sha256([UInt8](codeVerifier.utf8)))
				state = Crypto.hexEncode(Crypto.randomBytes(count: 16) ?? [])
				
				print("Code Verifier: \(codeVerifier)")
				print("Code Challenge: \(codeChallenge)")
				print("State: \(state)")
				print("Scope: \(Request.URLEncode(DiscordConsts.scope))")
				
				let deviceIP = ""
				
//				// urls
				let authURL =
					"https://discord.com/oauth2/authorize?client_id=\(DiscordConsts.ClientID)&response_type=code&scope=\(Request.URLEncode(DiscordConsts.scope))&code_challenge=\(codeChallenge)&code_challenge_method=\("S256")&state=\(state)&redirect_uri=\(Request.URLEncode("https://static.llsc12.me/discord"))"

				let url =
					"https://static.llsc12.me/discord?ip=\("192.168.0.33")&auth=\(Request.URLEncode(authURL))"
				
//				// TODO: set up a web server to handle the redirect from our site
//
//				// Create web page with QR code for user
//				var conf = WebCommonConfig()
//				var reply = WebCommonReply()
//				var _: libnx.Result = webPageCreate(
//					&conf,
//					"https://static.llsc12.me/qr?url=\(Request.URLEncode(url))",
//				)
//				webConfigSetJsExtension(&conf, true)
//				webConfigSetPageCache(&conf, true)
//				webConfigSetBootLoadingIcon(&conf, true)
//				webConfigSetWhitelist(&conf, ".*")
//				_ = webConfigShow(&conf, &reply)
			}

			consoleUpdate(nil)  // push new frame
		}
	}
}
