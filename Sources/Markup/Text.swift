//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A node representing text.
public struct Text: Node, Sendable {

	/// The text content of the node.
	@usableFromInline let content: String

	/// Creates a new text node with the given content.
	///
	/// - Parameter content: The text content of the node.
	@inlinable public init(_ content: consuming String) {
		self.content = content
	}

	/// Creates a new text node with the given content.
	///
	/// - Parameter build: A closure that produces the content of the node.
	@inlinable public init(_ build: () -> String) {
		self.content = build()
	}

	/// Renders the text element using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		renderer.append(text: content)
	}
}
