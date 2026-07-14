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

	/// Streams the selected branch using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func stream(using renderer: inout some StreamRenderer) async throws {
		switch self {
			case .first(let node):	try await node.stream(using: &renderer)
			case .second(let node):	try await node.stream(using: &renderer)
		}
	}
}

// MARK: -

extension Conditional: Sendable where First: Sendable, Second: Sendable {}

// MARK: -

extension Conditional: SyncNode where First: SyncNode, Second: SyncNode {

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
