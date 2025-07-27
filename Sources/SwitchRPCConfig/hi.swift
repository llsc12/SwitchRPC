import libnx

@_cdecl("main")
func main() {
  // why do we get to nil this ref?
  consoleInit(nil)

  // config game pad
  padConfigureInput(1, HidNpadStyleSet_NpadStandard.rawValue)

  var pad: PadState = .init()
  padInitializeDefault(&pad)

  while appletMainLoop() {
    padUpdate(&pad)

    if padGetButtonsDown(&pad) & UInt64(HidNpadButton_Plus.rawValue) != 0 {
      break
    }

    if padGetButtonsDown(&pad) & UInt64(HidNpadButton_A.rawValue) != 0 {
      print("holy shit dude this is swift")
    }

    consoleUpdate(nil) // push new frame
  }

  // bai bai
  consoleExit(nil)
}
