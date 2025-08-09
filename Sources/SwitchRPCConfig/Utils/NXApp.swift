//
//  NXApp.swift
//  SwitchRPC
//
//  Created by Lakhan Lothiyi on 02/08/2025.
//

import libnx

// not meant for anyone but this particular app.

protocol NXApp {
	mutating func modulesInit(_ ctx: inout RunLoopContext)
	mutating func modulesExit(_ ctx: inout RunLoopContext)

	mutating func runloop(_ ctx: inout RunLoopContext)

	init()
}

struct RunLoopContext {
	fileprivate var _exit: Bool = false
	var pad: PadState = .init()

	mutating func exit() {
		_exit = true
	}
}

extension NXApp {
	static func main() {
		var app = Self.init()
		var ctx = RunLoopContext()
		app.modulesInit(&ctx)
		defer { app.modulesExit(&ctx) }
		while !ctx._exit {
			app.runloop(&ctx)
		}
	}
}

