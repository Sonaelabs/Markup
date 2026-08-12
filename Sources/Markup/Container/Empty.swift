//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// An empty node with no attributes or content.
public struct Empty: Node {

	/// Creates a new empty element.
	@usableFromInline init() {}

	/// Renders the empty element using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {}
}
