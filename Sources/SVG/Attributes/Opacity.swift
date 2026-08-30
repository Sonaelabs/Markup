//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension SVG {

	public struct Opacity: RawRepresentable, Sendable {

		public let rawValue: String

		@inlinable public init(rawValue: String) {
			self.rawValue = rawValue
		}
	}
}

// MARK: -

extension SVG.Paint: ExpressibleByFloatLiteral {

	@inlinable public init(floatLiteral value: Double) {
		self.init(rawValue: .init(value))
	}
}

// MARK: -

extension SVG.Opacity: ExpressibleByStringLiteral {
	
	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}
}
