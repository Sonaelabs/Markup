//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A result builder for building nodes.
@resultBuilder public struct ContentBuilder {

	/// Passes an already-composed node through unchanged.
	@inlinable public static func buildExpression<Content: Node>(_ content: consuming Content) -> Content {
		content
	}

	/// Wraps a string literal as text content.
	@inlinable public static func buildExpression(_ content: consuming String) -> Text {
		.init(content)
	}

	/// Produces an empty node for a block with no content.
	@inlinable public static func buildBlock() -> EmptyNode {
		.init()
	}

	/// Passes a single child through unchanged.
	@inlinable public static func buildBlock<Content: Node>(_ content: consuming Content) -> Content {
		content
	}

	/// Combines multiple children into a fragment.
	@inlinable public static func buildBlock<each Child: Node>(_ child: repeat each Child) -> Fragment<repeat each Child> {
		.init(repeat each child)
	}

	/// Supports `if` without `else`.
	@inlinable public static func buildOptional<Content: Node>(_ content: consuming Content?) -> Content? {
		content
	}

	/// Supports the first branch of `if`/`else`.
	@inlinable public static func buildEither<First: Node, Second: Node>(first content: consuming First) -> ConditionalNode<First, Second> {
		.first(content)
	}

	/// Supports the second branch of `if`/`else`.
	@inlinable public static func buildEither<First: Node, Second: Node>(second content: consuming Second) -> ConditionalNode<First, Second> {
		.second(content)
	}

	/// Supports `for` loops over a collection.
	@inlinable public static func buildArray<Content: Node>(_ nodes: consuming [Content]) -> [Content] {
		nodes
	}
}
