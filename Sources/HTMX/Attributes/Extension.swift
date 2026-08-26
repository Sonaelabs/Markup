//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTMX {

	/// A type representing an extension for HTMX.
	public struct Extension: RawRepresentable, Sendable {

		public var rawValue: String

		/// Creates an instance using a string.
		@inlinable public init(rawValue: String) {
			self.rawValue = rawValue
		}
	}
}

// MARK: -

extension HTMX.Extension {

	/// Specifies support for `Server Send Events` directly from HTML.
	@inlinable public static var sse: Self { "sse" }

	/// Specifies support for `Web Sockets` directly from HTML.
	@inlinable public static var ws: Self { "ws" }

	/// Specifies to ignore an extension.
	@inlinable public static func ignore(_ ext: consuming Self) -> Self {
		.init(rawValue: "ignore").appending(ext)
	}

	@usableFromInline consuming func appending(_ ext: consuming Self) -> Self {
		rawValue.append(":")
		rawValue.append(ext.rawValue)
		return self
	}
}

// MARK: -

extension HTMX.Extension: ExpressibleByStringLiteral {

	/// Creates an instance using a string literal.
	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}
}
