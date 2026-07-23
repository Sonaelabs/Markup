//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A type representing content editability.
public enum ContentEditable: String, Sendable {

	///
	case enabled = "true"

	case disabled = "false"

	case plainTextOnly = "plaintext-only"
}

// MARK: -

extension ContentEditable: ExpressibleByBooleanLiteral {

	/// Creates an instance using boolean literals.
	@inlinable public init(booleanLiteral value: BooleanLiteralType) {
		self = value ? .enabled : .disabled
	}
}
