//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A type representing an element query selector.
public struct FooSelector: QuerySelector, Sendable {

	public var rawValue: String

	/// Creates an instance using a string.
	@inlinable public init(rawValue: String) {
		self.rawValue = rawValue
	}
}

// MARK: -

extension FooSelector {

	/// Creates a `next` selector.
	@inlinable public static var next: Self { "next" }

	/// Creates a `previous` selector.
	@inlinable public static var previous: Self { "previous" }

}

// MARK: -

extension FooSelector: ExpressibleByStringLiteral {

	/// Creates an instance using a string literal.
	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}
}
