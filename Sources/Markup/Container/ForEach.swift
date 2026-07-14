//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public struct ForEach<Source: Sequence>: Node where Source.Element: Node {

	/// The sequence that builds content.
	@usableFromInline let source: Source

	/// Creates a node that builds content using a `Sequence`.
	///
	/// - Parameter source: The sequence that builds content.
	@inlinable public init(_ source: Source) {
		self.source = source
	}

	/// Streams content in order from source, flushing the renderer after every element if needed.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func stream(using renderer: inout some StreamRenderer) async throws {
		for content in source {
			try await content.stream(using: &renderer)
			try await renderer.flushIfNeeded()
		}
	}
}

// MARK: -

extension ForEach {

	/// Creates a node that builds content based on data of a `Sequence`.
	///
	/// - Parameters:
	///   - data: The data source that will be mapped using `build`.
	///   - build: The closure that transforms data elements into nodes.
	@inlinable public init<Data: Sequence, Content: Node>(_ data: Data, @ContentBuilder build: @escaping (Data.Element) -> Content)
	where Source == LazyMapSequence<Data, Content> {
		let source = data.lazy.map(build)
		self.init(source)
	}
}

// MARK: -

extension ForEach: Sendable where Source: Sendable {}

// MARK: -

extension ForEach: SyncNode where Source.Element: SyncNode {

	/// Renders content in order from source.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		for content in source {
			content.render(using: &renderer)
		}
	}
}
