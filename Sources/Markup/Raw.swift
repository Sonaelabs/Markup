//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A node representing a raw string.
public struct Raw: Node, Sendable {

	/// The raw string of the element.
	@usableFromInline let content: String

	/// Creates a new raw node with the given content.
	///
	/// - Parameter content: The raw string of the element.
	@inlinable public init(_ content: consuming String) {
		self.content = content
	}

	/// Renders the raw element using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		renderer.append(raw: content)
	}
}
