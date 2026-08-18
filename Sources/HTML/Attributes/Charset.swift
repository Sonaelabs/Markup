//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTMLValue {

	/// Specifies the character encoding for the HTML document.
	public struct Charset: RawRepresentable, Sendable {

		public let rawValue: String

		/// Creates an instance using a string.
		@inlinable public init(rawValue: String) {
			self.rawValue = rawValue
		}
	}
}

// MARK: -

extension HTMLValue.Charset {

	/// Character encoding for Unicode.
	@inlinable public static var utf8: Self { "UTF-8" }
}

// MARK: -

extension HTMLValue.Charset: ExpressibleByStringLiteral {

	/// Creates an instance using a string literal.
	@inlinable public init(stringLiteral value: String) {
		self.rawValue = value
	}
}
