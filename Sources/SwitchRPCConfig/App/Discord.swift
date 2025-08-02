//
//  Discord.swift
//  SwitchRPC
//
//  Created by Lakhan Lothiyi on 30/07/2025.
//

enum DiscordConsts {
	static let ClientID: UInt = 1_249_119_754_522_857_616
	static let redirectURI = "https://static.llsc12.me/discord"
	static let scope = "openid sdk.social_layer_presence"
}

import libnx

class Discord {
	init() { }
	var auth: AuthResponse?
	
	func me() throws(DiscordError) -> JSONValue {
		let auth = try checAuth()
		
		var res: Response
		do {
			res = try Request(url: "https://gaming-sdk.com/api/v9/oauth2/@me")
				.settingMethod(.get)
				.addingHeader("Authorization", value: "Bearer \(auth.accessToken)")
				.perform()
		} catch {
			throw .requestError(error)
		}
		
		return .parse(from: res.data) ?? JSONValue.object([:])
	}

	@discardableResult
	func authenticate(code: String, codeVerifier: String)
		throws(DiscordError) -> AuthResponse
	{
		let body: [String: String] = [
			"grant_type": "authorization_code",
			"redirect_uri": DiscordConsts.redirectURI,
			"client_id": DiscordConsts.ClientID.description,
			"code": code,
			"code_verifier": codeVerifier,
		]
		
		consoleUpdate(nil)
		
		var res: Response
		do {
			res = try Request(url: "https://gaming-sdk.com/api/v9/oauth2/token")
				.settingMethod(.post)
				.settingData(body.toQueryString())
				.perform()
		} catch let error { // have to wrap the error if it isnt a discord error
			throw DiscordError.requestError(error)
		}

		var auth: AuthResponse
		do {
			auth = try JSONValue.decode(AuthResponse.self, from: res.data)
		} catch {
			throw DiscordError.decodingError(error)
		}
		
		self.auth = auth
		return auth
	}
	
	struct AuthResponse: Decodable {
		var refreshToken: String
		var accessToken: String
		
		init(json: JSONValue) throws(DecodingError) {
			guard let refreshToken = json["refresh_token"].string else {
				throw .missingKey("refresh_token")
			}
			guard let accessToken = json["access_token"].string else {
				throw .missingKey("access_token")
			}
			self.refreshToken = refreshToken
			self.accessToken = accessToken
		}
	}
	
	// Helpers

	enum DiscordError: LocalizedError {
		case requestError(Request.RequestError)
		case decodingError(DecodingError)
		case unauthenticated

		var errorDescription: String? {
			switch self {
			case .unauthenticated:
				return "You must authenticate first before making this request."
			case .requestError(let error):
				return error.errorDescription
			case .decodingError(let error):
				return error.errorDescription
			}
		}
	}
	
	func checAuth() throws(DiscordError) -> AuthResponse {
		guard let auth = self.auth else {
			throw DiscordError.unauthenticated
		}
		if auth.accessToken.isEmpty || auth.refreshToken.isEmpty {
			throw DiscordError.unauthenticated
		}
		return auth
	}
}
