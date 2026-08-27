//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension ARIA {

	/// A type representing pressed state.
	public enum Pressed: String, Sendable {

		/// Specifies support for being pressed but is not currently pressed.
		case `false`

		/// Specifies a mixed mode value for a tri-state toggle button.
		case mixed

		/// Specifies is pressed.
		case `true`
	}
}

// MARK: -

extension ARIA.Pressed: ExpressibleByBooleanLiteral {

	/// Creates an instance using a boolean literal.
	@inlinable public init(booleanLiteral value: Bool) {
		self = value ? .true : .false
	}
}
