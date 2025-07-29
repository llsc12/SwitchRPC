import curl
import libnx

func doRequest() {

	var res: CURLcode
	let curl = curl_easy_init()
	defer { curl_easy_cleanup(curl) }
	if let curl {
		curl_easy_setopt(
			curl,
			CURLOPT_URL,
			"https://static.llsc12.me/misc/balls.txt"
		)
		curl_easy_setopt(curl, CURLOPT_USERAGENT, "libnx curl example/1.0")
		curl_easy_setopt(curl, CURLOPT_TIMEOUT_MS, 1500)
		// set the write function to handle the response

		let writeFunction: curl_write_callback = {
			(buffer, size, nitems, outstream) -> size_t in
			// do something ig

			return size * nitems  // <-- Always return this!
		}

		curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writeFunction)

		res = curl_easy_perform(curl)
		if res != CURLE_OK {
			let str = String(cString: curl_easy_strerror(res)!)
			print("curl_easy_perform() failed: \(str)\n", )
			consoleUpdate(nil)  // push new frame
		}
	}

}

func doRequest2() {
	do {
		let res = try Request(url: "https://static.llsc12.me/misc/balls.txt")
			.settingMethod(.get)
			.settingTimeout(ms: 1500)
			.addingHeader("User-Agent", value: "SwitchRPC/1.0")
			.perform()
		print("Response: \(res.data)")
	} catch let error {
		print(error.errorDescription ?? "An unknown error occurred.")
	}
}

@main
struct SwitchRPCConfig {
	static func main() {
		// why do we get to nil this ref?
		consoleInit(nil)

		// networking
		socketInitializeDefault()

		curl_global_init(Int(CURL_GLOBAL_DEFAULT))
		defer { curl_global_cleanup() }

		// config game pad
		padConfigureInput(1, HidNpadStyleSet_NpadStandard.rawValue)

		var pad: PadState = .init()
		padInitializeDefault(&pad)

		print("hi mom")

		while appletMainLoop() {
			padUpdate(&pad)

			if padGetButtonsDown(&pad) & UInt64(HidNpadButton_Plus.rawValue) != 0 {
				break
			}

			if padGetButtonsDown(&pad) & UInt64(HidNpadButton_A.rawValue) != 0 {
				print("wag wan")
			}

			if padGetButtonsDown(&pad) & UInt64(HidNpadButton_B.rawValue) != 0 {
				print("network req https://static.llsc12.me/misc/balls.txt")
				consoleUpdate(nil)  // push new frame
				doRequest2()
				print("request done")
			}

			consoleUpdate(nil)  // push new frame
		}

		socketExit()
		consoleExit(nil)
	}
}
