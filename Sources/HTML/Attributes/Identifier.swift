//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTML {

	public struct Identifier: RawRepresentable, Sendable {
		public typealias RawValue = String

		public var rawValue: RawValue

		/// Creates an `id` using a raw string value.
		@inlinable public init(rawValue: RawValue) {
			assert(!rawValue.isEmpty, "An `id` must not be an empty string")
			assert(!rawValue.contains(where: \.isWhitespace), "An `id` must not contain whitespace: \(rawValue)")
			self.rawValue = rawValue
		}
	}
}

// MARK: -

extension HTML.Identifier: ExpressibleByStringLiteral {

	/// Creates an `id` using a string literal.
	public init(stringLiteral value: RawValue) {
		self.init(rawValue: value)
	}
}
