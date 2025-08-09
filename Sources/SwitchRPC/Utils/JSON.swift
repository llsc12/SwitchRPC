import json

public enum JSONValue {
	case object([String: JSONValue])
	case array([JSONValue])
	case string(String)
	case int(Int)
	case double(Double)
	case bool(Bool)
	case null

	// MARK: - Convenience initializers

	public init(_ value: String) { self = .string(value) }
	public init(_ value: Int) { self = .int(value) }
	public init(_ value: Double) { self = .double(value) }
	public init(_ value: Bool) { self = .bool(value) }
	public init(_ value: [String: JSONValue]) { self = .object(value) }
	public init(_ value: [JSONValue]) { self = .array(value) }
}

extension JSONValue {
	/// Convert JSONValue to JSON string using libjson-c
	public func stringify() -> String? {
		guard let obj = self.toJsonC() else { return nil }
		defer { json_object_put(obj) }
		guard let cStr = json_object_to_json_string(obj) else { return nil }
		return String(cString: cStr)
	}

	/// Parse a JSON string into a JSONValue using libjson-c
	public static func parse(from json: String) -> JSONValue? {
		let obj = json.withCString { cstr in
			json_tokener_parse(cstr)
		}
		defer { if obj != nil { json_object_put(obj) } }
		return JSONValue.fromJsonC(obj)
	}
}

extension JSONValue {
	/// Convert JSONValue to json-c OpaquePointer
	func toJsonC() -> OpaquePointer? {
		switch self {
		case .object(let dict):
			guard let obj = json_object_new_object() else { return nil }
			for (key, value) in dict {
				if let child = value.toJsonC() {
					json_object_object_add(obj, key, child)
				}
			}
			return obj
		case .array(let arr):
			guard let obj = json_object_new_array() else { return nil }
			for value in arr {
				if let child = value.toJsonC() {
					json_object_array_add(obj, child)
				}
			}
			return obj
		case .string(let str):
			return json_object_new_string(str)
		case .int(let i):
			return json_object_new_int(Int32(i))
		case .double(let d):
			return json_object_new_double(d)
		case .bool(let b):
			return json_object_new_boolean(b ? 1 : 0)
		case .null:
			return json_object_new_null()
		}
	}

	/// Parse a json-c OpaquePointer to JSONValue (recursive)
	static func fromJsonC(_ obj: OpaquePointer?) -> JSONValue? {
		guard let obj = obj else { return nil }
		let type = json_object_get_type(obj)
		switch type {
		case json_type_object:
			var dict: [String: JSONValue] = [:]
			// Use a C helper to get keys (see note below)
			if let keysArray = json_object_object_get_keys(obj) {
				// There's variadic functions so we do the variadic function calls in c
				let arrayLen = json_object_array_length(keysArray)
				for i in 0..<arrayLen {
					if let keyCStringObj = json_object_array_get_idx(keysArray, i) {
						let key = String(cString: json_object_get_string(keyCStringObj))
						var val: OpaquePointer? = nil
						if json_object_object_get_ex(obj, key, &val) != 0, let val = val {
							if let value = JSONValue.fromJsonC(val) {
								dict[key] = value
							}
						}
					}
				}
				json_object_put(keysArray)
			}
			return .object(dict)
		case json_type_array:
			var arr: [JSONValue] = []
			let len = json_object_array_length(obj)
			for i in 0..<len {
				let elem = json_object_array_get_idx(obj, i)
				if let value = JSONValue.fromJsonC(elem) {
					arr.append(value)
				}
			}
			return .array(arr)
		case json_type_string:
			return .string(String(cString: json_object_get_string(obj)))
		case json_type_int:
			return .int(Int(json_object_get_int64(obj)))
		case json_type_double:
			return .double(json_object_get_double(obj))
		case json_type_boolean:
			return .bool(json_object_get_boolean(obj) != 0)
		case json_type_null:
			return .null
		default:
			return nil
		}
	}
}

// accessors

extension JSONValue {
	// Subscript for object (dictionary) access
	public subscript(key: String) -> JSONValue {
		get {
			if case .object(let dict) = self, let value = dict[key] {
				return value
			}
			return .null
		}
		set {
			// This works only for vars, so mark your JSONValue as var when mutating
			switch self {
			case .object(var dict):
				dict[key] = newValue
				self = .object(dict)
			case .null:
				self = .object([key: newValue])
			default:
				// Promote to object with just this key if not object or null
				self = .object([key: newValue])
			}
		}
	}

	// Subscript for array access
	public subscript(index: Int) -> JSONValue {
		get {
			if case .array(let arr) = self, index >= 0, index < arr.count {
				return arr[index]
			}
			return .null
		}
		set {
			switch self {
			case .array(var arr):
				if index >= 0 && index < arr.count {
					arr[index] = newValue
					self = .array(arr)
				} else if index == arr.count {
					arr.append(newValue)
					self = .array(arr)
				}
			// else: index out of bounds, do nothing
			case .null:
				if index == 0 {
					self = .array([newValue])
				}
			default:
				// Promote to array if not already
				if index == 0 {
					self = .array([newValue])
				}
			}
		}
	}

	// Computed properties for each type
	public var int: Int? {
		if case .int(let v) = self { return v }
		return nil
	}
	public var string: String? {
		if case .string(let v) = self { return v }
		return nil
	}
	public var double: Double? {
		if case .double(let v) = self { return v }
		return nil
	}
	public var bool: Bool? {
		if case .bool(let v) = self { return v }
		return nil
	}
	public var array: [JSONValue]? {
		if case .array(let v) = self { return v }
		return nil
	}
	public var object: [String: JSONValue]? {
		if case .object(let v) = self { return v }
		return nil
	}
}

// i wanna feel happy

typealias Codable = Encodable & Decodable

protocol Encodable {
	func encode() -> String
}
protocol Decodable {
	init(json: JSONValue) throws(DecodingError)
}

enum DecodingError: LocalizedError {
	case failedTokenization
	case invalidType(expected: String, actual: String)
	case missingKey(String)

	var errorDescription: String? {
		switch self {
		case .invalidType(let expected, let actual):
			return "Expected type \(expected), but got \(actual)"
		case .missingKey(let key):
			return "Missing required key: \(key)"
		case .failedTokenization:
			return "Failed to tokenize JSON data"
		}
	}
}

extension JSONValue {
	static func decode<T: Decodable>(_ type: T.Type, from data: String)
		throws(DecodingError) -> T
	{
		guard let json = JSONValue.parse(from: data) else {
			throw DecodingError.failedTokenization
		}
		return try T(json: json)
	}

	static func encode<T: Encodable>(_ value: T) -> String {
		return value.encode()
	}
}
