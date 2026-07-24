//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A type representing an `hx-include` attribute value.
public struct Include: QuerySelector, Sendable {

	public var rawValue: String

	/// Creates an instance using a string.
	@inlinable public init(rawValue: String) {
		self.rawValue = rawValue
	}
}

// MARK: -

extension Include {

	/// Creates an `inherit` attribute value.
	@inlinable public static var inherit: Self { "inherit" }
}

// MARK: -

extension Include: ExpressibleByStringLiteral {

	/// Creates an instance using a string literal.
	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}
}
