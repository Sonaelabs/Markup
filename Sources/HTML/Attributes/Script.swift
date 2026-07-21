//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A type representing a string of JavaScript.
public struct Script: RawRepresentable, Sendable {

	public var rawValue: String

	/// Creates a script using a raw string.
	@inlinable public init(rawValue: String) {
		self.rawValue = rawValue
	}
}

// TODO: add support for loading inline javascript from a file

// MARK: -

extension Script: ExpressibleByStringLiteral {

	/// Creates a script using a string literal.
	@inlinable public init(stringLiteral value: String) {
		self.rawValue = value
	}
}
