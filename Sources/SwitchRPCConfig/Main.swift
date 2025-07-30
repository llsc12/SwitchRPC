import curl
import libnx
import json

@main
struct SwitchRPCConfig {
	static func main() {
		// why do we get to nil this ref?
		consoleInit(nil)

		// networking
		socketInitializeDefault()
		Request.curlInit(); defer { Request.curlCleanup() }

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
				let obj: JSONValue = .object([
					"gm": .array([
						.string("gm1"),
						.string("gm2"),
						.string("gm3")
					])
				])

				print(obj["gm"][1].string ?? "nil")
			}

			if padGetButtonsDown(&pad) & UInt64(HidNpadButton_B.rawValue) != 0 {
				let jsonStr = """
				{
					"gm": [
						"gm1",
						"gm2",
						"gm3"
					]
				}
				"""
				let obj = JSONValue.parse(from: jsonStr)
				print(obj?["gm"][1].string ?? "nil")
			}

			consoleUpdate(nil)  // push new frame
		}

		socketExit()
		consoleExit(nil)
	}
}
