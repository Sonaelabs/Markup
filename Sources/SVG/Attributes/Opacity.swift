//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public struct Opacity: RawRepresentable, Sendable {

	public let rawValue: String

	@inlinable public init(rawValue: String) {
		self.rawValue = rawValue
	}
}

// MARK: -

extension Opacity: ExpressibleByFloatLiteral {

	@inlinable public init(floatLiteral value: Double) {
		self.init(rawValue: .init(value))
	}
}

// MARK: -

extension Opacity: ExpressibleByStringLiteral {
	
	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}
}
