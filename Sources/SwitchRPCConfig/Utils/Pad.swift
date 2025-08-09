//
//  Pad.swift
//  SwitchRPC
//
//  Created by Lakhan Lothiyi on 02/08/2025.
//

import libnx

// pad exts
extension PadState {
	/// Configures and initializese the game pad input.
	/// - Parameters:
	///   - players: The number of players to configure (1-8).
	///   - style: The style of the game pad to configure.
	mutating func configure(_ players: UInt, _ style: PadStyle) {
		padConfigureInput(u32(players), style.rawValue)
		padInitializeDefault(&self)
	}

	/// HID pad styles
	struct PadStyle: OptionSet {
		let rawValue: UInt32

		static let fullKey = PadStyle(rawValue: 1 << 0)  // Pro Controller
		static let handheld = PadStyle(rawValue: 1 << 1)  // Joy-Con controller in handheld mode
		static let joyDual = PadStyle(rawValue: 1 << 2)  // Joy-Con controller in dual mode
		static let joyLeft = PadStyle(rawValue: 1 << 3)  // Joy-Con left controller in single mode
		static let joyRight = PadStyle(rawValue: 1 << 4)  // Joy-Con right controller in single mode
		static let gc = PadStyle(rawValue: 1 << 5)  // GameCube controller
		static let palma = PadStyle(rawValue: 1 << 6)  // Poké Ball Plus controller
		static let lark = PadStyle(rawValue: 1 << 7)  // NES/Famicom controller
		static let handheldLark = PadStyle(rawValue: 1 << 8)  // NES/Famicom controller in handheld mode
		static let lucia = PadStyle(rawValue: 1 << 9)  // SNES controller
		static let lagon = PadStyle(rawValue: 1 << 10)  // N64 controller
		static let lager = PadStyle(rawValue: 1 << 11)  // Sega Genesis controller
		static let systemExt = PadStyle(rawValue: 1 << 29)  // Generic external controller
		static let system = PadStyle(rawValue: 1 << 30)  // Generic controller

		static let fullControl: PadStyle = [.fullKey, .handheld, .joyDual]
		///< Style set comprising Npad styles containing the full set of controls {FullKey, Handheld, JoyDual}
		static let standard: PadStyle = [
			.fullKey, .handheld, .joyDual, .joyLeft, .joyRight,
		]
		///< Style set comprising all standard Npad styles {FullKey, Handheld, JoyDual, JoyLeft, JoyRight}

		init(rawValue: UInt32) {
			self.rawValue = rawValue
		}
	}
	
	/// Call at the beginning of frames
	mutating func update() {
		padUpdate(&self)
	}
	
	/// Get the buttons that were pressed.
	/// - Parameter button: The button to check.
	/// - Returns: True if the button was pressed, false otherwise.
	mutating func wasButtonPressed(_ button: PadButton) -> Bool {
		padGetButtonsDown(&self) & UInt64(button.rawValue) != 0
	}
	
	/// Get the buttons that are currently pressed down.
	/// - Parameter button: The button to check.
	/// - Returns: True if the button is pressed down, false otherwise.
	mutating func isButtonDown(_ button: PadButton) -> Bool {
		padGetButtons(&self) & UInt64(button.rawValue) != 0
	}
	
	/// Get the buttons that were released or up.
	/// - Parameter button: The button to check.
	/// - Returns: True if the button was released or up, false otherwise.
	mutating func isButtonUp(_ button: PadButton) -> Bool {
		padGetButtonsUp(&self) & UInt64(button.rawValue) != 0
	}
	
	mutating func getStick(_ stick: PadStick) -> (x: Int32, y: Int32) {
		let state: HidAnalogStickState = padGetStickPos(&self, stick.rawValue)
		return (x: state.x, y: state.y)
	}
	
	enum PadStick: UInt32 {
		case left = 0  // Left Stick
		case right = 1 // Right Stick
	}
	
	struct PadButton: OptionSet {
		let rawValue: UInt32
		
		static let a = PadButton(rawValue: 1 << 0)  // A button / Right face button
		static let b = PadButton(rawValue: 1 << 1)  // B button / Down face button
		static let x = PadButton(rawValue: 1 << 2)  // X button / Up face button
		static let y = PadButton(rawValue: 1 << 3)  // Y button / Left face button
		static let stickL = PadButton(rawValue: 1 << 4)  // Left Stick button
		static let stickR = PadButton(rawValue: 1 << 5)  // Right Stick button
		static let l = PadButton(rawValue: 1 << 6)  // L button
		static let r = PadButton(rawValue: 1 << 7)  // R button
		static let zl = PadButton(rawValue: 1 << 8)  // ZL button
		static let zr = PadButton(rawValue: 1 << 9)  // ZR button
		static let plus = PadButton(rawValue: 1 << 10) // Plus button
		static let minus = PadButton(rawValue: 1 << 11) // Minus button
		static let left = PadButton(rawValue: 1 << 12) // D-Pad Left button
		static let up = PadButton(rawValue: 1 << 13)   // D-Pad Up button
		static let right = PadButton(rawValue: 1 << 14) // D-Pad Right button
		static let down = PadButton(rawValue: 1 << 15) // D-Pad Down button
		static let stickLLeft = PadButton(rawValue: 1 << 16) // Left Stick pseudo-button when moved Left
		static let stickLUp = PadButton(rawValue: 1 << 17)
		static let stickLRight = PadButton(rawValue: 1 << 18) // Left Stick pseudo-button when moved Right
		static let stickLDown = PadButton(rawValue: 1 << 19) // Left Stick pseudo-button when moved Down
		static let stickRLeft = PadButton(rawValue: 1 << 20) // Right Stick pseudo-button when moved Left
		static let stickRUp = PadButton(rawValue: 1 << 21) // Right Stick pseudo-button when moved Up
		static let stickRRight = PadButton(rawValue: 1 << 22) // Right Stick pseudo-button when moved Right
		static let stickRDown = PadButton(rawValue: 1 << 23) // Right Stick pseudo-button when moved Down
		static let leftSL = PadButton(rawValue: 1 << 24) // SL button on Left Joy-Con
		static let leftSR = PadButton(rawValue: 1 << 25) // SR button on Left Joy-Con
		static let rightSL = PadButton(rawValue: 1 << 26) // SL button on Right Joy-Con
		static let rightSR = PadButton(rawValue: 1 << 27) // SR button on Right Joy-Con
		static let palma = PadButton(rawValue: 1 << 28) // Top button on Poké Ball Plus (Palma) controller
		static let verification = PadButton(rawValue: 1 << 29) // Verification
		static let handheldLeftB = PadButton(rawValue: 1 << 30) // B button on Left NES/HVC controller in Hand
		static let lagonCLeft = PadButton(rawValue: 1 << 31) // Left C button in N64 controller
		static let lagonCUp = PadButton(rawValue: 1 << 32) // Up C button in N64 controller
		static let lagonCRight = PadButton(rawValue: 1 << 33) // Right C button in N64 controller
		static let lagonCDown = PadButton(rawValue: 1 << 34) // Down C button in N64 controller
		
		static let anyLeft: PadButton = [.left, .stickLLeft, .stickRLeft]  // Bitmask containing all buttons that are considered Left (D-Pad, Sticks)
		static let anyUp: PadButton = [.up, .stickLUp, .stickRUp]  // Bitmask containing all buttons that are considered Up (D-Pad, Sticks)
		static let anyRight: PadButton = [.right, .stickLRight, .stickRRight] // Bitmask containing all buttons that are considered Right (D-Pad, Sticks)
		static let anyDown: PadButton = [.down, .stickLDown, .stickRDown]  // Bitmask containing all buttons that are considered Down (D-Pad, Sticks)
		static let anySL: PadButton = [.leftSL, .rightSL] // Bitmask containing SL buttons on both Joy-Cons (Left/Right)
		static let anySR: PadButton = [.leftSR, .rightSR] // Bitmask containing SR buttons on both Joy-Cons (Left/Right)
		
		init(rawValue: UInt32) {
			self.rawValue = rawValue
		}
	}
}

