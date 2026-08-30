//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension SVG {

	public protocol PercentRepresentable where Self: RawRepresentable<String> {
		init(rawValue: String)
	}

	public struct Percentage: PercentRepresentable, Equatable, Sendable {

		public var rawValue: String

		@inlinable public init(rawValue: String) {
			
			self.rawValue = if rawValue.hasSuffix("%") {
				rawValue
			} else {
				rawValue + "%"
			}
		}
	}
}

// MARK: -

postfix operator %

public postfix func %<T: SVG.PercentRepresentable>(value: Double) -> T {
	.init(rawValue: "\(value)%")
}

public postfix func %<T: SVG.PercentRepresentable>(value: Int) -> T {
	.init(rawValue: "\(value)%")
}
