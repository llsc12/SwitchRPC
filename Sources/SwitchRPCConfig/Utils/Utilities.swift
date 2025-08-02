//
//  Utilities.swift
//  SwitchRPC
//
//  Created by Lakhan Lothiyi on 29/07/2025.
//

import curl

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

