//
//  Utilities.swift
//  SwitchRPC
//
//  Created by Lakhan Lothiyi on 29/07/2025.
//

import curl
import libnx

// LocalizedError
protocol LocalizedError: Error {
	var errorDescription: String? { get }
}

extension UInt8 {
	init(ascii: Character) {
		self = ascii.asciiValue ?? 0
	}
}

@_silgen_name("__errno")  // This is the C symbol
func __errno() -> UnsafeMutablePointer<Int32>

extension String {
	func trimmingWhitespaces() -> String {
		var start = startIndex
		var end = index(before: endIndex)
		while start <= end
			&& (self[start] == " " || self[start] == "\t" || self[start] == "\r"
				|| self[start] == "\n")
		{
			start = index(after: start)
		}
		while end >= start
			&& (self[end] == " " || self[end] == "\t" || self[end] == "\r"
				|| self[end] == "\n")
		{
			end = index(before: end)
		}
		return String(self[start...end])
	}
}

extension [String: String] {
	func toQueryString() -> String {
		return map { "\($0)=\(Request.URLEncode($1))" }.joined(separator: "&")
	}
}

enum Utilities {
	static func GetCurrentProcessData() -> (
		pid: UInt64, tid: UInt64, title: String
	)? {
		var processId: UInt64 = 0
		var programId: UInt64 = 0

		// Try to get the application process ID
		if pmdmntGetApplicationProcessId(&processId).succeeded {
			// Try to get the program ID for this process
			if pminfoGetProgramId(&programId, processId).succeeded {
				// Try to get the application name using programId
				let title = getAppName(programId: programId)
				return (processId, programId, title)
			} else {
				// If programId could not be obtained, its useless anyways. return nil
				return nil
			}
		} else {
			return nil
		}
	}

	static func getAppName(programId: UInt64) -> String {
		// Allocate control data buffer
		var appControlData = NsApplicationControlData()
		var appControlDataSize: UInt64 = 0

		// Zero out the buffer (mimic memset)
		_ = withUnsafeMutableBytes(of: &appControlData) {
			$0.initializeMemory(as: UInt8.self, repeating: 0)
		}

		// Fetch application control data
		if nsGetApplicationControlData(
			NsApplicationControlSource_Storage,
			programId,
			&appControlData,
			MemoryLayout.size(ofValue: appControlData),
			&appControlDataSize
		).succeeded {
			// Get language entry pointer
			var langEntryPtr: UnsafeMutablePointer<NacpLanguageEntry>? = nil
			if nacpGetLanguageEntry(&appControlData.nacp, &langEntryPtr).succeeded {
				if let langEntry = langEntryPtr {
					// Safely convert the name field to a Swift String
					let name = withUnsafeBytes(of: langEntry.pointee.name) {
						rawPtr -> String in
						let buffer = rawPtr.bindMemory(to: CChar.self)
						return String(cString: buffer.baseAddress!)
					}
					if !name.isEmpty {
						return name
					}
				}
			}
		}
		return "Unknown Title"
	}
}

extension String {
	init(cStr: [UInt8]) {
		self = String(cString: cStr)
	}
	init(cStr: [Int8]) {
		self = String(cString: cStr)
	}
}

// Macro ports

/// Checks whether a result code indicates success.
// #define R_SUCCEEDED(res)   ((res)==0)
extension Result {
	var succeeded: Bool {
		self == 0
	}
}
/// Checks whether a result code indicates failure.
// #define R_FAILED(res)      ((res)!=0)
extension Result {
	var failed: Bool {
		self != 0
	}
}
/// Returns the module ID of a result code.
// #define R_MODULE(res)      ((res)&0x1FF)
extension Result {
	var module: Int {
		return Int(self) & 0x1FF
	}
}
/// Returns the description of a result code.
extension Result {
	var description: Int {
		return (Int(self) >> 9) & 0x1FFF
	}
}
/// Masks out unused bits in a result code, retrieving the actual value for use in comparisons.
// #define R_VALUE(res)       ((res)&0x3FFFFF)
extension Result {
	var value: Int {
		return Int(self) & 0x3FFFFF
	}
}

/// Builds a result code from its constituent components.
// #define MAKERESULT(module,description) \
//     ((((module)&0x1FF)) | ((description)&0x1FFF)<<9)
extension Result {
	static func make(module: Int, description: Int) -> Result {
		return Result((module & 0x1FF) | ((description & 0x1FFF) << 9))
	}
}

/// Builds a HOS version value from its constituent components.
// #define MAKEHOSVERSION(_major,_minor,_micro) (((u32)(_major) << 16) | ((u32)(_minor) << 8) | (u32)(_micro))
func MAKEHOSVERSION(_ major: UInt8, _ minor: UInt8, _ micro: UInt8) -> UInt32 {
	return (UInt32(major) << 16) | (UInt32(minor) << 8) | UInt32(micro)
}
