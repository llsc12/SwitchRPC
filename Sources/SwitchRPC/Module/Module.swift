import json
import curl
import libnx

@main
struct SwitchRPC {
	static func main() {
		svcSleepThread(60 * 1000 * 1000 * 1000) // Sleep for 60 seconds to allow the switch to boot and connect to the network
		while true {
			let req = curl_easy_init()
			curl_easy_setopt_str(req, CURLOPT_URL, "http://192.168.0.156:3000/api/update")
			curl_easy_setopt_long(req, CURLOPT_POST, 1)
			curl_easy_setopt_str(req, CURLOPT_POSTFIELDS, "{\"tid\": 0, \"title\": \"gm\"}")
			curl_easy_setopt_long(req, CURLOPT_TIMEOUT_MS, 1000)
			
			curl_easy_perform(req)

			svcSleepThread(2 * 1000 * 1000 * 1000)
		}
	}
}
