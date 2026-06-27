//
//  ProfileStore.swift
//  SwitchRPC
//
//  Store over sdmc:/config/switchrpc_profiles.json linking Switch user
//  profiles to Discord accounts. See SHARED CONTRACT (v1).
//

import devkitpro  // C stdio: fopen/fclose/fgets/fputs/fread/remove
import libnx

/// One Switch-user -> Discord link entry.
struct Link {
	var switchUid: String        // "<16hex>-<16hex>" (all-zero = default/wildcard)
	var switchNickname: String   // display only
	var discordId: String        // discord user id, may be ""
	var discordUsername: String  // display only
	var refreshToken: String     // discord OAuth refresh token (rotates)
}

/// A Switch user reported by the sysmodule via switchrpc_users.json.
struct SwitchUser {
	var uid: String
	var nickname: String
}

enum ProfileStore {
	static let profilesPath = "sdmc:/config/switchrpc_profiles.json"
	static let legacyTokenPath = "sdmc:/config/switchrpc_token"
	/// Switch user list, written by the sysmodule (which has account access).
	static let usersPath = "sdmc:/config/switchrpc_users.json"
	/// all-zero uid string == DEFAULT / wildcard link
	static let defaultUid = "0000000000000000-0000000000000000"

	// MARK: - AccountUid <-> switch_uid string

	/// Lowercase, zero-padded 16-char hex for a UInt64.
	static func hex16(_ value: UInt64) -> String {
		let hexChars: [UInt8] = Array("0123456789abcdef".utf8)
		var out = [UInt8](repeating: 0, count: 17)
		var v = value
		var i = 15
		while i >= 0 {
			out[i] = hexChars[Int(v & 0xF)]
			v >>= 4
			i -= 1
		}
		out[16] = 0  // null-terminate
		return String(cStr: out)
	}

	/// Parse a hex substring into a UInt64, or nil if invalid.
	static func parseHex(_ s: Substring) -> UInt64? {
		if s.isEmpty { return nil }
		var result: UInt64 = 0
		for ch in s.utf8 {
			let digit: UInt64
			switch ch {
			case 0x30...0x39: digit = UInt64(ch - 0x30)         // 0-9
			case 0x61...0x66: digit = UInt64(ch - 0x61 + 10)    // a-f
			case 0x41...0x46: digit = UInt64(ch - 0x41 + 10)    // A-F
			default: return nil
			}
			result = (result << 4) | digit
		}
		return result
	}

	/// "%016llx-%016llx" of uid.uid[0], uid.uid[1].
	static func uidToString(_ uid: AccountUid) -> String {
		return hex16(uid.uid.0) + "-" + hex16(uid.uid.1)
	}

	/// Parse a switch_uid string back into an AccountUid.
	static func stringToUid(_ s: String) -> AccountUid? {
		let parts = s.split(separator: "-")
		guard parts.count == 2 else { return nil }
		guard let hi = parseHex(parts[0]), let lo = parseHex(parts[1]) else {
			return nil
		}
		var uid = AccountUid()
		uid.uid.0 = hi
		uid.uid.1 = lo
		return uid
	}

	// MARK: - Raw file IO

	static func fileExists(_ path: String) -> Bool {
		if let f = fopen(path, "r") {
			fclose(f)
			return true
		}
		return false
	}

	static func readFile(_ path: String) -> String? {
		guard let file = fopen(path, "rb") else { return nil }
		defer { fclose(file) }
		var data = [UInt8]()
		var chunk = [UInt8](repeating: 0, count: 4096)
		while true {
			let n = fread(&chunk, 1, chunk.count, file)
			if n <= 0 { break }
			data.append(contentsOf: chunk[0..<n])
		}
		if data.isEmpty { return nil }
		data.append(0)  // null-terminate
		return String(cStr: data)
	}

	static func writeFile(_ path: String, _ content: String) {
		if let file = fopen(path, "w") {
			fputs(content, file)
			fclose(file)
		}
	}

	// MARK: - Load / Save

	/// Switch users as enumerated by the sysmodule and written to disk.
	static func loadSwitchUsers() -> [SwitchUser] {
		guard let content = readFile(usersPath) else { return [] }
		guard let json = JSONValue.parse(from: content) else { return [] }
		guard let arr = json["users"].array else { return [] }
		var users: [SwitchUser] = []
		for item in arr {
			let uid = item["uid"].string ?? ""
			if uid.isEmpty { continue }
			users.append(
				SwitchUser(uid: uid, nickname: item["nickname"].string ?? "Unknown")
			)
		}
		return users
	}

	static func load() -> [Link] {
		guard let content = readFile(profilesPath) else { return [] }
		guard let json = JSONValue.parse(from: content) else { return [] }
		guard let arr = json["links"].array else { return [] }
		var links: [Link] = []
		for item in arr {
			let su = item["switch_uid"].string ?? ""
			if su.isEmpty { continue }
			links.append(
				Link(
					switchUid: su,
					switchNickname: item["switch_nickname"].string ?? "",
					discordId: item["discord_id"].string ?? "",
					discordUsername: item["discord_username"].string ?? "",
					refreshToken: item["refresh_token"].string ?? ""
				)
			)
		}
		return links
	}

	static func save(_ links: [Link]) {
		var arr: [JSONValue] = []
		for link in links {
			let obj: [String: JSONValue] = [
				"switch_uid": JSONValue(link.switchUid),
				"switch_nickname": JSONValue(link.switchNickname),
				"discord_id": JSONValue(link.discordId),
				"discord_username": JSONValue(link.discordUsername),
				"refresh_token": JSONValue(link.refreshToken),
			]
			arr.append(JSONValue(obj))
		}
		let root: [String: JSONValue] = [
			"version": JSONValue(1),
			"links": JSONValue(arr),
		]
		guard let str = JSONValue(root).stringify() else { return }
		writeFile(profilesPath, str)
	}

	/// Insert or replace a link by switch_uid, preserving all others.
	static func upsert(_ link: Link) {
		var links = load()
		var found = false
		for i in 0..<links.count {
			if links[i].switchUid == link.switchUid {
				links[i] = link
				found = true
				break
			}
		}
		if !found { links.append(link) }
		save(links)
	}

	/// Remove the link with the given switch_uid, preserving all others.
	/// Named `removeLink` (not `remove`) so it does not shadow the C stdio
	/// `remove(path)` used by `migrateLegacyIfNeeded()` below.
	static func removeLink(switchUid: String) {
		var links = load()
		links.removeAll { $0.switchUid == switchUid }
		save(links)
	}

	// MARK: - Legacy migration (owned by the config app)

	/// Read the legacy single-token file, trimming trailing whitespace.
	static func readLegacyToken() -> String? {
		guard let file = fopen(legacyTokenPath, "r") else { return nil }
		var tokenBuffer = [CChar](repeating: 0, count: 1024)
		fgets(&tokenBuffer, Int32(tokenBuffer.count), file)
		fclose(file)
		var token = String(cStr: tokenBuffer)
		while let last = token.last,
			last == "\n" || last == "\r" || last == " " || last == "\t"
		{
			token.removeLast()
		}
		return token.isEmpty ? nil : token
	}

	/// If profiles.json is absent but a non-empty legacy token exists, create
	/// profiles.json with a single default/wildcard link, then delete the
	/// legacy token only after profiles.json is written successfully.
	static func migrateLegacyIfNeeded() {
		if fileExists(profilesPath) { return }
		guard let token = readLegacyToken() else { return }

		let link = Link(
			switchUid: defaultUid,
			switchNickname: "Default",
			discordId: "",
			discordUsername: "",
			refreshToken: token
		)
		save([link])

		// only delete the legacy file once profiles.json is on disk
		if fileExists(profilesPath) {
			remove(legacyTokenPath)  // C stdio remove(path)
		}
	}
}
