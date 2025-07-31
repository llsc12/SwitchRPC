//
//  Crypto.swift
//  SwitchRPC
//
//  Created by Lakhan Lothiyi on 31/07/2025.
//

enum Crypto {
	// MARK: - Random Bytes
	static func randomBytes(count: Int) -> [UInt8]? {
		guard count > 0 else { return nil }
		var buf = [UInt8](repeating: 0, count: count)
		buf = buf.map({ _ in
			return .random(in: UInt8.min...UInt8.max)
		})
		return buf
	}

	// MARK: - SHA256
	static func sha256(_ input: [UInt8]) -> [UInt8] {
		SHA2(variant: .sha256).calculate(for: input)
	}

	// MARK: - Base64url encode
	static func base64urlEncode(_ input: [UInt8]) -> String {
		let base64 = Base64.EncodeString(input, alphabet: .URLAndFilenameSafe)
		let base64url: [String] = base64.map { char -> String in
			switch char {
			case "+": return "-"
			case "/": return "_"
			case "=": return ""
			default: return "\(char)"
			}
		}
		return base64url.joined()
	}

	static func hexEncode(_ input: [UInt8]) -> String {
		let hexChars: [UInt8] = Array("0123456789abcdef".utf8)
		var out = [UInt8](repeating: 0, count: input.count * 2 + 1)
		for i in 0..<input.count {
			out[2 * i] = hexChars[Int(input[i] >> 4)]
			out[2 * i + 1] = hexChars[Int(input[i] & 0x0F)]
		}
		out[input.count * 2] = 0  // null-terminate
		return out.withUnsafeBufferPointer { ptr in
			String(cString: UnsafePointer<CChar>(OpaquePointer(ptr.baseAddress!)))
		}
	}
}
