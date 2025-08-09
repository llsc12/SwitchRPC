import json
import curl
import libnx

@main
struct SwitchRPC {
	static func main() {
		svcSleepThread(45 * 1000 * 1000 * 1000) // Sleep to allow the switch to boot and connect to the network
		while true {
			if let info = Utilities.GetCurrentProcessData() {
				let payload = JSONValue.object([
					"tid": .uint(info.tid),
					"title": .string(info.title)
				])
				
				let res = try? Request(url: "http://192.168.0.214:3000/api/update")
					.addingHeader("Content-Type", value: "application/json")
					.settingMethod(.post)
					.settingData(payload.stringify() ?? "{}")
					.perform()
			}
		}
	}
}
