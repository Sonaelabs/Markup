//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTMLValue {

	/// A type representing content editability.
	public enum ContentEditable: String, Sendable {

		///
		case enabled = "true"

		case disabled = "false"

		case plainTextOnly = "plaintext-only"
	}
}

// MARK: -

extension HTMLValue.ContentEditable: ExpressibleByBooleanLiteral {

	/// Creates an instance using a boolean literal.
	@inlinable public init(booleanLiteral value: BooleanLiteralType) {
		self = value ? .enabled : .disabled
	}
}
