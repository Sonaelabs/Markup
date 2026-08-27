//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension ARIA {

	/// A type representing content editability.
	public enum Invalid: String, Sendable {

		/// Value has failed validation.
		case `true` = "true"

		/// Value has passed validation.
		case `false` = "false"

		/// Grammatical error detected.
		case grammar

		/// Spelling error detected.
		case spelling
	}
}

// MARK: -

extension ARIA.Invalid: ExpressibleByBooleanLiteral {

	/// Creates an instance using a boolean literal.
	@inlinable public init(booleanLiteral value: Bool) {
		self = value ? .true : .false
	}
}
