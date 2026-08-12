//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public protocol Component<Content> {

	/// The type of content this component represents.
	associatedtype Content: Node

	/// The content of the component.
	@ContentBuilder var content: Content { get }
}

// MARK: -

public struct Compound<Content: Node>: Node {

	@usableFromInline let content: Content

	@inlinable public init(_ component: some Component<Content>) {
		self.content = component.content
	}

	/// Renders using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		content.render(using: &renderer)
	}
}

// MARK: -

extension ContentBuilder {
	@inlinable public static func buildExpression<Content>(_ component: some Component<Content>) -> Compound<Content> {
		Compound(component)
	}
}
