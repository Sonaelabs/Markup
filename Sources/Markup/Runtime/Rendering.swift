//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A type that converts a tree of markup nodes into an output format.
public protocol Renderer {

	/// Renders a comment.
	mutating func append(comment: consuming StaticString)

	/// Renders a raw string.
	mutating func append(raw: consuming String)

	/// Renders a text string.
	mutating func append(text: consuming String)

	/// Renders an element's starting tag and attributes.
	mutating func append<Tag>(start name: consuming String, attributes: consuming [Attribute<Tag>])

	/// Renders an element's ending tag.
	mutating func append(end name: consuming String)
}
