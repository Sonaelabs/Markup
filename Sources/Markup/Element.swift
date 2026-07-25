//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public protocol TagDefinition {

	/// The name of a tag.
	static var name: String { get }
}

/// A node containing attributes and content.
public struct Element<Tag: TagDefinition, Content: Node>: Node {

	/// The attributes of the element.
	@usableFromInline let attributes: [Attribute<Tag>]

	/// The children of the element.
	@usableFromInline let content: Content

	/// Creates an element with the given attributes and children.
	///
	/// - Parameters:
	///   - name: The name of the element.
	///   - attributes: The attributes of the element.
	///   - build: The closure that builds the content.
	@inlinable public init(_ attributes: Attribute<Tag>..., @ContentBuilder build: () -> Content) {
		self.attributes = attributes
		self.content = build()
	}

	/// Renders the element and streams its content using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func stream(using renderer: inout some StreamRenderer) async throws {
		renderer.append(start: Tag.name, attributes: attributes)
		try await content.stream(using: &renderer)
		renderer.append(end: Tag.name)
	}
}

// MARK: -

extension Element: Sendable where Content: Sendable {}

// MARK: -

extension Element: SyncNode where Content: SyncNode {

	/// Renders the element using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		renderer.append(start: Tag.name, attributes: attributes)
		content.render(using: &renderer)
		renderer.append(end: Tag.name)
	}
}

// MARK: -

extension Element where Content == Empty {

	/// Creates an element with the given attributes.
	///
	/// - Parameters:
	///   - name: The name of the element.
	///   - attributes: The attributes of the element.
	@inlinable public init(_ attributes: Attribute<Tag>...) {
		self.attributes = attributes
		self.content = Empty()
	}

	/// Renders the element using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		renderer.append(start: Tag.name, attributes: attributes)
		renderer.append(end: Tag.name)
	}
}

// MARK: -

/// A node containing only attributes.
public struct VoidElement<Tag: TagDefinition>: SyncNode, Sendable {

	/// The attributes of the void element.
	@usableFromInline let attributes: [Attribute<Tag>]

	/// Creates a void element with the given attributes.
	///
	/// - Parameters:
	///   - name: The name of the void element.
	///   - attributes: The attributes of the void element.
	@inlinable public init(_ attributes: Attribute<Tag>...) {
		self.attributes = attributes
	}

	/// Renders the void element using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		renderer.append(start: Tag.name, attributes: attributes)
	}
}
