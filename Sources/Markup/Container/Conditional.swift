//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A node that renders one of two possible child nodes.
public enum Conditional<First: Node, Second: Node>: Node {

	/// The node produced by the first branch.
	case first(First)

	/// The node produced by the second branch.
	case second(Second)

	/// Renders the selected branch using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		switch self {
			case .first(let node):	node.render(using: &renderer)
			case .second(let node):	node.render(using: &renderer)
		}
	}
}
