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

@_silgen_name("__errno") // This is the C symbol
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

extension Dictionary<String, String> {
	func toQueryString() -> String {
		return map { "\($0)=\(Request.URLEncode($1))" }.joined(separator: "&")
	}
}

enum Utilities {
	static func GetCurrentProcessData() throws(UtilError) -> (pid: UInt, tid: UInt, title: String, username: String) {
		var pid: UInt64 = 0
		var tid: UInt64 = 0

		// Get process ID and title ID
		pmdmntGetApplicationProcessId(&pid)
		pminfoGetProgramId(&tid, pid)

		// Load application control data
		var appControlData = NsApplicationControlData()
		var appControlDataSize: UInt64 = 0

		nsGetApplicationControlData(
			NsApplicationControlSource_Storage,
			tid,
			&appControlData,
			MemoryLayout.size(ofValue: appControlData),
			&appControlDataSize
		)

		// Get language entry pointer
		var langEntryPtr: UnsafeMutablePointer<NacpLanguageEntry>? = nil
		nacpGetLanguageEntry(&appControlData.nacp, &langEntryPtr)

		var name = "<unknown>"

		if let langEntry = langEntryPtr {
			// Copy name field into a buffer
			let rawName = langEntry.pointee.name
			let nameBytes = withUnsafeBytes(of: rawName) { rawPtr -> [UInt8] in
				var bytes = Array(rawPtr.prefix(512))
				if bytes.last != 0 {
					bytes.append(0) // ensure null-termination
				}
				return bytes
			}

			// Convert using C-string constructor
			name = String(cStr: nameBytes)
		}
		
		guard pid != 0 && tid != 0 && !name.isEmpty else {
			throw UtilError.noTitleProcess
		}
		
		
		
		return (UInt(pid), UInt(tid), name, "Unknown User")
	}
		
		enum UtilError: LocalizedError {
			case noTitleProcess
			
			var errorDescription: String? {
				switch self {
				case .noTitleProcess:
					return "No title process is running."
				}
			}
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
