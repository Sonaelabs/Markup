//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension ARIA {

	public enum Current: String, Sendable {

		case page
		case step
		case location
		case date
		case time
		case `true`
		case `false`
	}
}

// MARK: -

extension ARIA.Current: ExpressibleByBooleanLiteral {

	/// Creates an instance using a boolean literal.
	@inlinable public init(booleanLiteral value: BooleanLiteralType) {
		self = value ? .true : .false
	}
}
