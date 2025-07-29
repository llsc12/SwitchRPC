//
//  Utilities.swift
//  SwitchRPC
//
//  Created by Lakhan Lothiyi on 29/07/2025.
//

import curl

// cURL Shims

func curl_easy_setopt(_ curl: UnsafeMutableRawPointer, _ option: CURLoption, _ value: String) { curl_easy_setopt_str(curl, option, value) }
func curl_easy_setopt(_ curl: UnsafeMutableRawPointer, _ option: CURLoption, _ value: Int) { curl_easy_setopt_long(curl, option, value) }
func curl_easy_setopt(_ curl: UnsafeMutableRawPointer, _ option: CURLoption, _ value: curl_write_callback) { curl_easy_setopt_ptr(curl, option, unsafeBitCast(value, to: UnsafeMutableRawPointer.self)) }
func curl_easy_setopt(_ curl: UnsafeMutableRawPointer, _ option: CURLoption, _ value: UnsafeMutablePointer<curl_slist>?) { curl_easy_setopt_ptr(curl, option, value) }
func curl_easy_setopt(_ curl: UnsafeMutableRawPointer, _ option: CURLoption, _ value: UnsafeMutablePointer<[UInt8]>?) { curl_easy_setopt_ptr(curl, option, value) }
func curl_easy_getinfo(_ curl: UnsafeMutableRawPointer, _ option: CURLINFO, _ value: UnsafeMutablePointer<Int>?) { curl_easy_getinfo_long(curl, option, value) }
func curl_easy_getinfo(_ curl: UnsafeMutableRawPointer, _ option: CURLINFO, _ value: UnsafeMutablePointer<UnsafeMutablePointer<CChar>?>?) { curl_easy_getinfo_str(curl, option, value) }

		
// LocalizedError
protocol LocalizedError: Error {
		var errorDescription: String? { get }
}
