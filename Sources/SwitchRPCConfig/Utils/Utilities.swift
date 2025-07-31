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
