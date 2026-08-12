//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A node in a markup tree.
public protocol Node: Sendable {

	/// Renders the node using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	consuming func render(using renderer: inout some Renderer)
}

// MARK: -

extension Optional: Node where Wrapped: Node {

	/// Renders the wrapped node using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		self?.render(using: &renderer)
	}
}

// MARK: -

extension Array: Node where Element: Node {

	/// Renders all child nodes using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		for element in self {
			element.render(using: &renderer)
		}
	}
}
