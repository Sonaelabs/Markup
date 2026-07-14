//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A node that builds content asynchonously.
public struct AsyncContent<Content: Node>: Node {

	/// The closure that builds content asynchronously.
	@usableFromInline let build: @Sendable () async throws -> Content

	/// Creates a node that builds content asynchronously.
	///
	/// - Parameter build: A closure that builds content asynchronously.
	@inlinable public init(@ContentBuilder build: @escaping @Sendable () async throws -> Content) {
		self.build = build
	}

	/// Streams content, flushing the renderer before and after awaiting the content.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func stream(using renderer: inout some StreamRenderer) async throws {
		try await renderer.flushIfNeeded()
		let content = try await build()
		try await content.stream(using: &renderer)
		try await renderer.flushIfNeeded()
	}
}

// MARK: -

extension AsyncContent: Sendable where Content: Sendable {}
