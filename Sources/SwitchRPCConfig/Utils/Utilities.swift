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
	static func GetCurrentProcessData() throws(UtilError) -> (pid: UInt, tid: UInt, name: String) {
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
		
		return (UInt(pid), UInt(tid), name)
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
