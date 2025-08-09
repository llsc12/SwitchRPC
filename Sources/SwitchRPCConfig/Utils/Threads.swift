//
//  Threads.swift
//  SwitchRPC
//
//  Created by Lakhan Lothiyi on 02/08/2025.
//

import libnx

// extensions to existing Thread struct

extension Thread {
	/// Returns the current thread ID.
	static func currentThreadId() -> UInt64 {
		var id: UInt64 = 0
		let handle = threadGetCurHandle()
		svcGetThreadId(&id, handle)
		return id
	}

	static func create(
		name: String,
		entry: ThreadFunc,
		arg: UnsafeMutableRawPointer? = nil,
		stackSize: Int = 0x4000,
		priority: Int32? = nil,
		cpu: ThreadCPU = .auto
	) throws -> Thread {
		let prio: Int32 = {
			if let priority { return priority }
			return switch cpu {
			case .auto: 0x2C
			case .core3: 0x3F
			default: 0x3B
			}
		}()
		var thread: Thread = .init()
		threadCreate(
			&thread,
			entry,
			arg,
			nil,
			stackSize,
			prio,
			cpu.rawValue
		)

		return thread
	}

	mutating func run() {
		threadStart(&self)
	}

	mutating func pause() {
		threadPause(&self)
	}

	mutating func resume() {
		threadResume(&self)
	}

	mutating func close() {
		threadClose(&self)
	}

	static func sleep(for duration: Duration) {
		let nanoseconds = Int64(duration.attoseconds / 1_000_000_000)  // Convert attoseconds to nanoseconds
		svcSleepThread(nanoseconds)  // Convert nanoseconds to milliseconds
	}

	enum ThreadCPU: Int32 {
		case auto = -2
		case core0 = 0
		case core1 = 1
		case core2 = 2
		case core3 = 3
	}
}
