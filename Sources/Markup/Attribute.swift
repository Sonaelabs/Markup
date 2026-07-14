//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A structure representing an attribute in a markup document.
public struct Attribute<Tag>: Equatable, Sendable {

	/// The name of the attribute.
	public let name: String

	/// The value of the attribute.
	public let value: String?

	/// Creates an attribute with a name and a value.
	@inlinable public init(name: consuming String, value: consuming String) {
		self.name = name
		self.value = value
	}

	/// Creates an attribute with a name and no value.
	@inlinable public init(name: consuming String) {
		self.name = name
		self.value = nil
	}
}

extension Attribute {

	/// Creates an attribute with a single string value.
	///
	/// - Parameters:
	///   - name: The name of the attribute
	///   - value: A raw representable value whose raw value is a string.
	/// - Returns: An `Attribute` instance representing a single string value.
	@inlinable public init<Value: RawRepresentable>(name: consuming String, value: consuming Value) where Value.RawValue == String {
		self.init(name: name, value: value.rawValue)
	}

	/// Creates an attribute with a single string value.
	///
	/// - Parameters:
	///   - name: The name of the attribute
	///   - value: A value that can be converted to a string.
	/// - Returns: An `Attribute` instance representing the single string value.
	@inlinable public init<Value: LosslessStringConvertible>(name: consuming String, value: consuming Value) {
		self.init(name: name, value: .init(value))
	}
}
