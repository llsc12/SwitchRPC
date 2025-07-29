//
//  Networking.swift
//  SwitchRPC
//
//  Created by Lakhan Lothiyi on 29/07/2025.
//

import curl
import libnx

struct Request {
	// Properties
	private var url: String
	private var headers: [[String]]
	private var method: HTTPMethod
	private var data: String?
	private var timeout: Int = 30  // seconds
	private var followRedirects: Bool = true

	init(url: String) {
		self.url = url
		self.method = .get
		self.headers = []
	}

	// Supporting Types
	enum HTTPMethod {
		case get
		case post
		case put
		case delete
	}

	enum RequestError: Error, LocalizedError {
		case initializationFailed
		case performFailed(CURLcode)
		case invalidResponse
		case timeoutExceeded
		case unknownError

		var errorDescription: String? {
			switch self {
			case .initializationFailed:
				return "Failed to initialize the request."
			case .performFailed(let code):
				return "Request failed with error code: \(code.rawValue)"
			case .invalidResponse:
				return "Received an invalid response from the server."
			case .timeoutExceeded:
				return "The request timed out."
			case .unknownError:
				return "An unknown error occurred."
			}
		}
	}

	// Modifiers
	func addingHeader(_ key: String, value: String) -> Request {
		var newRequest = self
		newRequest.headers.append([key, value])
		return newRequest
	}
	func settingMethod(_ method: HTTPMethod) -> Request {
		var newRequest = self
		newRequest.method = method
		return newRequest
	}
	func settingData(_ data: String) -> Request {
		var newRequest = self
		newRequest.data = data
		return newRequest
	}
	func settingTimeout(ms timeout: Int) -> Request {
		var newRequest = self
		newRequest.timeout = timeout
		return newRequest
	}
	func settingFollowRedirects(_ follow: Bool) -> Request {
		var newRequest = self
		newRequest.followRedirects = follow
		return newRequest
	}

	// Methods
	mutating func setHeader(_ key: String, value: String) {
		self.headers.removeAll { pair in
			pair[0] == key
		}
		self.headers.append([key, value])
	}
	mutating func setMethod(_ method: HTTPMethod) {
		self.method = method
	}
	mutating func setData(_ data: String) {
		self.data = data
	}
	mutating func setTimeout(ms timeout: Int) {
		self.timeout = timeout
	}
	mutating func setFollowRedirects(_ follow: Bool) {
		self.followRedirects = follow
	}

	func perform() throws(Request.RequestError) -> Response {
		// Initialize CURL
		let curl = curl_easy_init()
		defer { curl_easy_cleanup(curl) }
		guard let curl else {
			throw RequestError.initializationFailed
		}

		// Set options
		// URL
		curl_easy_setopt(curl, CURLOPT_URL, url)
		// Headers
		var slist: UnsafeMutablePointer<curl_slist>? = nil
		defer { curl_slist_free_all(slist) }
		for header in headers {
			let key = header[0]
			let value = header[1]
			let header = "\(key): \(value)"
			slist = curl_slist_append(slist, header)
		}
		curl_easy_setopt(curl, CURLOPT_HTTPHEADER, slist)

		// Method
		switch method {
		case .get:
			curl_easy_setopt(curl, CURLOPT_HTTPGET, 1)
		case .post:
			curl_easy_setopt(curl, CURLOPT_POST, 1)
		case .put:
			curl_easy_setopt(curl, CURLOPT_PUT, 1)
		case .delete:
			curl_easy_setopt(curl, CURLOPT_CUSTOMREQUEST, "DELETE")
		}

		// Data
		if let data {
			curl_easy_setopt(curl, CURLOPT_POSTFIELDS, data)
		}

		// Timeout
		curl_easy_setopt(curl, CURLOPT_TIMEOUT, timeout)

		// Follow redirects
		curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, followRedirects ? 1 : 0)

		// Response handling
		var responseData: [UInt8] = []
		var responseCode: Int = 0

		let writeCallback: curl_write_callback = {
				(contents, size, nmemb, userdata) -> Int in
				let realsize = size * nmemb
				guard let contents, let userdata, realsize > 0 else { return 0 }

				let buffer = userdata.assumingMemoryBound(to: [UInt8].self)
				
				// Reserve capacity for better performance
				buffer.pointee.reserveCapacity(buffer.pointee.count + Int(realsize) - 1)
				
				// Copy bytes one by one, but only the exact amount
				for i in 0..<Int(realsize) - 1 {
					let byte = UInt8(contents.advanced(by: i).pointee)
					buffer.pointee.append(byte)
				}

				return realsize
			}


		// Pass pointer to buffer using CURLOPT_WRITEDATA, and set write function
		try withUnsafeMutablePointer(to: &responseData) {
			responsePtr throws(RequestError) -> Void in
			curl_easy_setopt(curl, CURLOPT_WRITEDATA, responsePtr)
			curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writeCallback)

			// Perform the request
			let res = curl_easy_perform(curl)
			if res != CURLE_OK {
				throw RequestError.performFailed(res)
			}

			// Check response, also set response code
			curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &responseCode)
			if responseCode < 200 || responseCode >= 300 {
				throw RequestError.invalidResponse
			}
		}

		// Convert response data to String (handle null-termination)
		let responseString = String(cString: responseData.withUnsafeBufferPointer { $0.baseAddress! })

		return .init(statusCode: responseCode, data: responseString)
	}

}

struct Response {
	var statusCode: Int
	var data: String
}
