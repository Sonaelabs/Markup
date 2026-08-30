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

	/// Renders a starting tag with attributes.
	mutating func append<Tag: TagDefinition>(start tag: Tag.Type, attributes: consuming [Attribute<Tag>], terminator: StaticString?)

	/// Renders an ending tag.
	mutating func append<Tag: TagDefinition>(end tag: Tag.Type)
}
