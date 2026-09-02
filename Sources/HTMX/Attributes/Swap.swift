//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTMX {

	/// A type representing how to swap elements.
	public struct Swap: RawRepresentable, Sendable {

		/// A type representing a swap strategy.
		public enum Strategy: String, Sendable {

			/// Specifies the inner html of the target element.
			case innerHTML

			/// Specifies the entire target element with the response.
			case outerHTML

			/// Specifies the text content of the target element, without parsing the response as HTML.
			case textContent

			/// Before the target element.
			case beforeBegin = "beforebegin"

			/// Before the first child of the target element.
			case afterBegin = "afterbegin"

			/// After the last child of the target element.
			case beforeEnd = "beforeend"

			/// After the target element.
			case afterEnd = "afterend"

			/// Morphs content inside element, preserving state and focus.
			case innerMorph

			/// Morphs entire element, preserving state and focus.
			case outerMorph

			/// Morphs the target’s attributes, then replaces its children.
			case outerSync

			/// Deletes the target element.
			case delete

			/// Does not append content.
			case none
		}

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

extension HTMX.Swap {

	/// Applies default from `htmx.config.defaultSwapStyle`.
	@inlinable public static var `default`: Self { "" }

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

	/// Morphs content inside element, preserving state and focus.
	@inlinable public static var innerMorph: Self { .init(strategy: .innerMorph) }

	/// Morphs entire element, preserving state and focus.
	@inlinable public static var outerMorph: Self { .init(strategy: .outerMorph) }

	/// Morphs the target’s attributes, then replaces its children.
	@inlinable public static var outerSync: Self { .init(strategy: .outerSync) }

	/// Deletes target element regardless of the response.
	@inlinable public static var delete: Self { .init(strategy: .delete) }

	/// Does not append content from response (out of band items will still be processed).
	@inlinable public static var none: Self { .init(strategy: .none) }
}

// MARK: - Modifier

extension HTMX.Swap {

	/// Specifies use of the new View Transitions API when a swap occurs.
	@inlinable public consuming func transition(_ enable: consuming Bool = true) -> Self {
		appending("transition", .init(enable))
	}

	/// Specifies the duration before doing the swap after it is received.
	@inlinable public consuming func swap(_ delay: consuming Duration) -> Self {
		appending("swap", delay.cssTime)
	}

	/// Specifies the duration before doing the settle after it is received.
	@inlinable public consuming func settle(_ delay: consuming Duration) -> Self {
		appending("settle", delay.cssTime)
	}

	/// Specifies wether the title of the page will be updated.
	@inlinable public consuming func ignoreTitle(_ enable: consuming Bool = true) -> Self {
		appending("ignoreTitle", .init(enable))
	}

	/// Specifies scrolling behavior of the target element.
	@inlinable public consuming func scroll(_ direction: consuming HTMX.Direction) -> Self {
		appending("scroll", direction.rawValue)
	}

	/// Specifies scrolling behavior of the target element.
	@inlinable public consuming func scroll(_ direction: consuming HTMX.Direction, _ selector: consuming HTMX.FooSelector) -> Self {
		appending("scroll:\(selector.rawValue)", direction.rawValue)
	}

	/// Specifies scrolling behavior of the target element.
	@inlinable public consuming func show(_ direction: consuming HTMX.Direction) -> Self {
		appending("show", direction.rawValue)
	}

	/// Specifies scrolling behavior of the target element.
	@inlinable public consuming func show(_ direction: consuming HTMX.Direction, _ selector: consuming HTMX.FooSelector) -> Self {
		appending("show:\(selector.rawValue)", direction.rawValue)
	}

	/// Specifies to preserves focus between requests for inputs that have a defined id attribute.
	@inlinable public consuming func focusScroll(_ enable: consuming Bool) -> Self {
		appending("focus-scroll", .init(enable))
	}

	/// Specifies not to scroll.
	@inlinable public consuming func showNone() -> Self {
		appending("show", "none")
	}

	

	@usableFromInline consuming func appending(_ modifier: consuming String, _ others: String...) -> Self {
		if !rawValue.isEmpty {
			rawValue.append(" ")
		}

		rawValue.append(modifier)

		for other in others {
			rawValue.append(":")
			rawValue.append(other)
		}

		return self
	}
}

// MARK: -

extension HTMX.Swap: ExpressibleByStringLiteral {

	/// Creates an instance using a string literal.
	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}
}
