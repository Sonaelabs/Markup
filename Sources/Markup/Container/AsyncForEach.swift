//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A node that builds content asynchonously using an `AsyncSequence`.
public struct AsyncForEach<Source: AsyncSequence>: Node where Source.Element: Node {

	/// The sequence that builds content.
	@usableFromInline let source: Source

	/// Creates a node that builds content asynchonously using an `AsyncSequence`.
	///
	/// - Parameter source: A sequence that builds content.
	@inlinable public init(_ source: Source) {
		self.source = source
	}

	/// Streams content in order from source, flushing the renderer after every element if needed.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func stream(using renderer: inout some StreamRenderer) async throws {
		for try await content in source {
			try await content.stream(using: &renderer)
			try await renderer.flushIfNeeded()
		}
	}
}

// MARK: -

extension AsyncForEach {

	/// Creates a node that builds content based on data of an `AsyncSequence`.
	///
	/// - Parameters:
	///   - data: A data source that will be mapped using `build`.
	///   - build: A closure that transforms data elements into nodesnode.
	@inlinable public init<Data: AsyncSequence, Content: Node>(_ data: Data, @ContentBuilder build: @escaping @Sendable (Data.Element) -> Content)
	where Source == AsyncMapSequence<Data, Content> {
		let source = data.map(build)
		self.init(source)
	}
}

// MARK: -

extension AsyncForEach: Sendable where Source: Sendable {}
