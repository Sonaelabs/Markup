//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTMX {

	/// A type representing how to swap elements.
	public struct SwapOOB: RawRepresentable, Sendable {
		public typealias Strategy = Swap.Strategy

		public var rawValue: String

		/// Creates an instance using a string.
		@inlinable public init(rawValue: String) {
			self.rawValue = rawValue
		}

		/// Creates an instance using a swap strategy.
		@inlinable public init(strategy: Strategy) {
			rawValue = strategy.rawValue
		}
	}
}

// MARK: - Styles

extension HTMX.SwapOOB {

	/// Applies default `.outerHTML`.
	@inlinable public static var `true`: Self { "true" }

	/// Replace inner html of the target element.
	@inlinable public static var innerHTML: Self { .init(strategy: .innerHTML) }

	/// Replace entire target element with the response.
	@inlinable public static var outerHTML: Self { .init(strategy: .outerHTML) }

	/// Replace text content of the target element, without parsing the response as HTML.
	@inlinable public static var textContent: Self { .init(strategy: .textContent) }

	/// Insert response before the target element.
	@inlinable public static var beforeBegin: Self { .init(strategy: .beforeBegin) }

	/// Insert response before the first child of the target element.
	@inlinable public static var afterBegin: Self { .init(strategy: .afterBegin) }

	/// Insert response after the last child of the target element.
	@inlinable public static var beforeEnd: Self { .init(strategy: .beforeEnd) }

	/// Insert response after the target element.
	@inlinable public static var afterEnd: Self { .init(strategy: .afterEnd) }

	/// Deletes target element regardless of the response.
	@inlinable public static var delete: Self { .init(strategy: .delete) }

	/// Does not append content from response (out of band items will still be processed).
	@inlinable public static var none: Self { .init(strategy: .none) }
}

// MARK: - Modifier

extension HTMX.SwapOOB {

	/// Replace inner html of the target element.
	@inlinable public static func innerHTML(_ selector: consuming String) -> Self {
		.innerHTML.appending(selector)
	}

	/// Replace entire target element with the response.
	@inlinable public static func outerHTML(_ selector: consuming String) -> Self {
		.outerHTML.appending(selector)
	}

	/// Replace text content of the target element, without parsing the response as HTML.
	@inlinable public static func textContent(_ selector: consuming String) -> Self {
		.textContent.appending(selector)
	}

	/// Insert response before the target element.
	@inlinable public static func beforeBegin(_ selector: consuming String) -> Self {
		.beforeBegin.appending(selector)
	}

	/// Insert response before the first child of the target element.
	@inlinable public static func afterBegin(_ selector: consuming String) -> Self {
		.afterBegin.appending(selector)
	}

	/// Insert response after the last child of the target element.
	@inlinable public static func beforeEnd(_ selector: consuming String) -> Self {
		.beforeEnd.appending(selector)
	}

	/// Insert response after the target element.
	@inlinable public static func afterEnd(_ selector: consuming String) -> Self {
		.afterEnd.appending(selector)
	}

	/// Deletes target element regardless of the response.
	@inlinable public static func delete(_ selector: consuming String) -> Self {
		.delete.appending(selector)
	}

	@usableFromInline consuming func appending(_ modifier: consuming String) -> Self {
		rawValue.append(":")
		rawValue.append(modifier)
		return self
	}
}

// MARK: -

extension HTMX.SwapOOB: ExpressibleByStringLiteral {

	/// Creates an instance using a string literal.
	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}
}
