//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A node containing attributes and content.
public struct Element<Tag, Content: Node>: Node {

	/// The name of the element.
	@usableFromInline let name: String

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
	@inlinable public init(name: consuming String, attributes: consuming [Attribute<Tag>], build: () -> Content) {
		self.attributes = attributes
		self.content = build()
		self.name = name
	}

	/// Renders the element and streams its content using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func stream(using renderer: inout some StreamRenderer) async throws {
		renderer.append(start: name, attributes: attributes)
		try await content.stream(using: &renderer)
		renderer.append(end: name)
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
		renderer.append(start: name, attributes: attributes)
		content.render(using: &renderer)
		renderer.append(end: name)
	}
}

// MARK: -

/// A node containing only attributes.
public struct VoidElement<Tag>: SyncNode, Sendable {

	/// The name of the void element
	@usableFromInline let name: String

	/// The attributes of the void element.
	@usableFromInline let attributes: [Attribute<Tag>]

	/// Creates a void element with the given attributes.
	///
	/// - Parameters:
	///   - name: The name of the void element.
	///   - attributes: The attributes of the void element.
	@inlinable public init(name: consuming String, attributes: consuming [Attribute<Tag>]) {
		self.attributes = attributes
		self.name = name
	}

	/// Renders the void element using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		renderer.append(start: name, attributes: attributes)
	}
}
