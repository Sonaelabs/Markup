//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A type representing an indicator.
public struct Indicator: RawRepresentable, Sendable {

	public var rawValue: String

	/// Creates an instance using a string.
	@inlinable public init(rawValue: String) {
		self.rawValue = rawValue
	}
}

// MARK: -

extension Indicator {

	/// Specifies to inherit an indicator.
	@inlinable public static var inherit: Self { "inherit" }

	/// Ignores an extension.
	@inlinable public static func closest(_ qyery: consuming String) -> Self {
		.init(rawValue: "closest").appending(qyery)
	}

	@usableFromInline consuming func appending(_ value: consuming String) -> Self {
		rawValue.append(" ")
		rawValue.append(value)
		return self
	}
}

// MARK: -

extension Indicator: ExpressibleByStringLiteral {

	/// Creates an instance using a string literal.
	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}
}
