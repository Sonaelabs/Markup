//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A node in a markup tree.
public protocol Node {

	/// Streams the node using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	consuming func stream(using renderer: inout some StreamRenderer) async throws
}

// MARK: -

extension Optional: Node where Wrapped: Node {

	/// Streams the wrapped node using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func stream(using renderer: inout some StreamRenderer) async throws {
		try await self?.stream(using: &renderer)
	}
}

// MARK: -

extension Array: Node where Element: Node {

	/// Streams all child nodes using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func stream(using renderer: inout some StreamRenderer) async throws {
		for element in self {
			try await element.stream(using: &renderer)
		}
	}
}

// MARK: -

/// A synchronous node in a markup tree.
public protocol SyncNode: Node {

	/// Renders the node using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	consuming func render(using renderer: inout some Renderer)
}

// MARK: -

extension SyncNode {

	/// Forwards the given renderer for synchronous rendering.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func stream(using renderer: inout some StreamRenderer) async throws {
		render(using: &renderer)
	}
}

// MARK: -

extension Optional: SyncNode where Wrapped: SyncNode {

	/// Renders the wrapped node using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		self?.render(using: &renderer)
	}
}

// MARK: -

extension Array: SyncNode where Element: SyncNode {

	/// Renders all child nodes using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		for element in self {
			element.render(using: &renderer)
		}
	}
}
