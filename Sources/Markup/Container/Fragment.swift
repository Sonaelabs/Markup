//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A node representing a tuple of child nodes.
public struct Fragment<each Child: Node>: Node {

	/// The child nodes in the tuple.
	@usableFromInline let children: (repeat each Child)

	/// Creates a tuple with the given child nodes.
	///
	/// - Parameter children: The child nodes to include in the fragment.
	@usableFromInline init(_ children: repeat each Child) {
		self.children = (repeat each children)
	}

	/// Streams children using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func stream(using renderer: inout some StreamRenderer) async throws {
		for child in repeat each children {
			try await child.stream(using: &renderer)
		}
	}
}

// MARK: -

extension Fragment: Sendable where repeat each Child: Sendable {}

// MARK: -

extension Fragment: SyncNode where repeat each Child: SyncNode {

	/// Renders children using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		for child in repeat each children {
			child.render(using: &renderer)
		}
	}
}
