//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

extension HTML {

	/// A node containing attributes and content.
	public struct Element<Tag: HTML.Tag, Content: HTML.Node>: HTML.Node {

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

		/// Creates an element with the given attributes and children.
		///
		/// - Parameters:
		///   - name: The name of the element.
		///   - attributes: The attributes of the element.
		///   - build: The closure that builds the content.
		@inlinable public init(_ attributes: Attribute<Tag>?..., @ContentBuilder build: () -> Content) {
			self.attributes = attributes.compactMap { $0 }
			self.content = build()
		}

		/// Renders the element using the given renderer.
		///
		/// - Parameter renderer: A renderer used for rendering.
		@inlinable public consuming func render(using renderer: inout some Renderer) {
			renderer.append(start: Tag.self, attributes: attributes, terminator: nil)
			content.render(using: &renderer)
			renderer.append(end: Tag.self)
		}
	}
}

// MARK: -

extension HTML.Element where Content == Empty {

	/// Creates an element with the given attributes.
	///
	/// - Parameters:
	///   - name: The name of the element.
	///   - attributes: The attributes of the element.
	@inlinable public init(_ attributes: Attribute<Tag>...) {
		self.attributes = attributes
		self.content = Empty()
	}

	/// Creates an element with the given attributes.
	///
	/// - Parameters:
	///   - name: The name of the element.
	///   - attributes: The attributes of the element.
	@inlinable public init(_ attributes: Attribute<Tag>?...) {
		self.attributes = attributes.compactMap { $0 }
		self.content = Empty()
	}

	/// Renders the element using the given renderer.
	///
	/// - Parameter renderer: A renderer used for rendering.
	@inlinable public consuming func render(using renderer: inout some Renderer) {
		renderer.append(start: Tag.self, attributes: attributes, terminator: nil)
		renderer.append(end: Tag.self)
	}
}

// MARK: -

extension HTML {

	/// A node containing only attributes.
	public struct VoidElement<Tag: HTML.Tag>: HTML.Node {

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

		/// Creates a void element with the given attributes.
		///
		/// - Parameters:
		///   - name: The name of the void element.
		///   - attributes: The attributes of the void element.
		@inlinable public init(_ attributes: Attribute<Tag>?...) {
			self.attributes = attributes.compactMap { $0 }
		}

		/// Renders the void element using the given renderer.
		///
		/// - Parameter renderer: A renderer used for rendering.
		@inlinable public consuming func render(using renderer: inout some Renderer) {
			renderer.append(start: Tag.self, attributes: attributes, terminator: nil)
		}
	}
}
