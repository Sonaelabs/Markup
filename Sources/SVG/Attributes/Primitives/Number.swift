//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public struct Number: RawRepresentable, Sendable {

	public let rawValue: String

	@inlinable public init(rawValue: String) {
		self.rawValue = rawValue
	}
}

// MARK: -

extension Number: ExpressibleByFloatLiteral {

	@inlinable public init(floatLiteral value: Double) {
		self.init(rawValue: .init(value))
	}
}

// MARK: -

extension Number: ExpressibleByIntegerLiteral {

	@inlinable public init(integerLiteral value: Int) {
		self.init(rawValue: .init(value))
	}
}

// MARK: -

extension Number: ExpressibleByStringLiteral {
	
	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}
}
