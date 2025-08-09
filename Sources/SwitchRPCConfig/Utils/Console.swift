//
//  Console.swift
//  SwitchRPC
//
//  Created by Lakhan Lothiyi on 03/08/2025.
//

import libnx

struct Console {
	nonisolated(unsafe) static let `default` = Console()
	
	var printConsole: PrintConsole
	
	init(_ console: inout PrintConsole) {
		self.printConsole = console
		consoleInit(&console)
	}
	init() {
		self.printConsole = PrintConsole()
		consoleInit(&self.printConsole)
	}
	
	mutating func update() {
		consoleUpdate(&self.printConsole)
	}
	
	mutating func setPosition(x: Int32, y: Int32) {
		print("")
	}
	
	mutating func exit() {
		consoleExit(&self.printConsole)
	}
}
