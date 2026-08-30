//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension SVG {

	public struct Number: RawRepresentable, Sendable {

		public let rawValue: String

		@inlinable public init(rawValue: String) {
			self.rawValue = rawValue
		}
	}
}

// MARK: -

extension SVG.Number: ExpressibleByFloatLiteral {

	@inlinable public init(floatLiteral value: Double) {
		self.init(rawValue: .init(value))
	}
}

// MARK: -

extension SVG.Number: ExpressibleByIntegerLiteral {

	@inlinable public init(integerLiteral value: Int) {
		self.init(rawValue: .init(value))
	}
}

// MARK: -

extension SVG.Number: ExpressibleByStringLiteral {
	
	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}
}
