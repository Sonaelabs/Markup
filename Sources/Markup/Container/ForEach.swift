//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public struct ForEach<Content: Node>: Node {

	/// The sequence that builds content.
	@usableFromInline let content: [Content]

	/// Creates a node that builds content using a `Sequence`.
	///
	/// - Parameter source: The sequence that builds content.
	@inlinable public init<Source: Sequence>(_ source: Source, @ContentBuilder build: (Source.Element) -> Content)
	where Source.Element: Sendable {
		self.content = source.map(build)
	}

	/// Renders content in order from source.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		for node in content {
			node.render(using: &renderer)
		}
	}
}

//// MARK: -
//
//extension ForEach {
//
//	/// Creates a node that builds content based on data of a `Sequence`.
//	///
//	/// - Parameters:
//	///   - data: The data source that will be mapped using `build`.
//	///   - build: The closure that transforms data elements into nodes.
//	@inlinable public init<Data: Sequence, Content: Node>(_ data: Data, @ContentBuilder build: (Data.Element) -> Content)
//	where Source == LazyMapSequence<Data, Content>, Data.Element: Sendable {
//		let source = data.lazy.map(build)
//		self.init(source)
//	}
//}
