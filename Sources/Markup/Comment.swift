//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A node representing a comment.
public struct Comment: SyncNode, Sendable {

	/// The text of the comment.
	@usableFromInline let text: StaticString

	/// Creates a comment node with the given text.
	///
	/// - Parameter text: The text of the comment.
	@inlinable public init(_ text: consuming StaticString) {
		self.text = text
	}

	/// Renders the comment using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		renderer.append(comment: text)
	}
}
