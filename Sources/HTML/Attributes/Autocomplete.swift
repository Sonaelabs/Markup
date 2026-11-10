//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A type representing the `autocomplete` attribute.
public struct Autocomplete: RawRepresentable, Sendable {

	public var rawValue: String

	/// Creates an instance using a string.
	@inlinable public init(rawValue: String) {
		self.rawValue = rawValue
	}
}

// MARK: -

extension Autocomplete {

	/// Creates a `on` attribute.
	@inlinable public static var on: Self {
		.init(rawValue: "on")
	}

	/// Creates a `off` attribute.
	@inlinable public static var off: Self {
		.init(rawValue: "off")
	}
}

// MARK: -

extension Autocomplete {

	/// Creates a `name` attribute.
	@inlinable public static var name: Self {
		.init(rawValue: "name")
	}
}

// MARK: -

extension Autocomplete: ExpressibleByStringLiteral {

	/// Creates an instance using a string literal.
	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}
}
