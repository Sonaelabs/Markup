//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

/// A buffer that rendered HTML can be written into.
public  protocol HTMLBuffer {

	/// Appends a single byte to the buffer.
	mutating func append(_ byte: UInt8)

	/// Appends a sequence of bytes to the buffer.
	mutating func append(contentsOf bytes: some Sequence<UInt8>)
}

// MARK: -

/// A `Renderer` that accumulates HTML into an in-memory byte buffer.
public struct HTMLRenderer<Buffer: HTMLBuffer>: Renderer {

	/// The buffer holding the rendered bytes.
	@usableFromInline var buffer: Buffer

	/// Creates an HTML renderer reserving the given buffer capacity.
	///
	/// - Parameter buffer: The buffer that rendered HTML will be written into.
	@inlinable public init(using buffer: consuming Buffer) {
		self.buffer = buffer
	}

	/// Renders an HTML comment.
	@inlinable public mutating func append(comment: consuming StaticString) {
		buffer.append(contentsOf: Entity.commentStart)
		comment.withUTF8Buffer { utf8 in
			buffer.append(contentsOf: utf8)
		}
		buffer.append(contentsOf: Entity.commentEnd)
	}

	/// Renders an HTML raw string.
	@inlinable public mutating func append(raw: consuming String) {
		raw.withUTF8 { utf8 in
			buffer.append(contentsOf: utf8)
		}
	}

	/// Renders an HTML text string.
	@inlinable public mutating func append(text: consuming String) {
		buffer.appendEscapedText(text)
	}

	/// Renders an HTML element's starting tag and attributes.
	@inlinable public mutating func append<Tag: TagDefinition>(start tag: Tag.Type, attributes: consuming [Attribute<Tag>]) {
		buffer.append(60) // <
		buffer.append(contentsOf: tag.name.utf8)

		for attribute in attributes {
			buffer.append(32) // space
			buffer.append(contentsOf: attribute.name.utf8)

			if let value = attribute.value {
				buffer.append(61) // =
				buffer.append(34) // "
				buffer.appendEscapedAttribute(value)
				buffer.append(34) // "
			}
		}

		buffer.append(62) // >
	}

	/// Renders an HTML element's ending tag.
	@inlinable public mutating func append<Tag: TagDefinition>(end tag: Tag.Type) {
		buffer.append(60) // <
		buffer.append(47) // /
		buffer.append(contentsOf: tag.name.utf8)
		buffer.append(62) // >
	}

	/// Consumes the renderer and returns the buffer holding the rendered html.
	///
	/// - Returns: The buffered bytes without copying.
	@inlinable public consuming func finish() -> Buffer {
		buffer
	}
}

// MARK: -

extension HTMLRenderer: Sendable where Buffer: Sendable {}

// MARK: -

@usableFromInline enum Entity {
	@usableFromInline static let commentStart: [UInt8] = .init("<!-- ".utf8)
	@usableFromInline static let commentEnd:   [UInt8] = .init(" -->".utf8)

	@usableFromInline static let ampersand:   [UInt8] = .init("&amp;".utf8)
	@usableFromInline static let lessthan:    [UInt8] = .init("&lt;".utf8)
	@usableFromInline static let greaterthan: [UInt8] = .init("&gt;".utf8)
	@usableFromInline static let quotation:   [UInt8] = .init("&quot;".utf8)
}

// MARK: -

extension HTMLBuffer {

	@usableFromInline mutating func appendEscapedText(_ string: consuming String) {
		string.withUTF8 { utf8 in
			var start = utf8.startIndex

			for index in utf8.indices {
				switch utf8[index] {
					case 38: // &
						append(contentsOf: utf8[start..<index])
						append(contentsOf: Entity.ampersand)
						start = utf8.index(after: index)
					case 60: // <
						append(contentsOf: utf8[start..<index])
						append(contentsOf: Entity.lessthan)
						start = utf8.index(after: index)
					case 62: // >
						append(contentsOf: utf8[start..<index])
						append(contentsOf: Entity.greaterthan)
						start = utf8.index(after: index)
					default: ()
				}
			}

			if start < utf8.endIndex {
				append(contentsOf: utf8[start..<utf8.endIndex])
			}
		}
	}

	@usableFromInline mutating func appendEscapedAttribute(_ string: consuming String) {
		string.withUTF8 { utf8 in
			var start = utf8.startIndex

			for index in utf8.indices {
				switch utf8[index] {
					case 38: // &
						append(contentsOf: utf8[start..<index])
						append(contentsOf: Entity.ampersand)
						start = utf8.index(after: index)
					case 34: // "
						append(contentsOf: utf8[start..<index])
						append(contentsOf: Entity.quotation)
						start = utf8.index(after: index)
					default: ()
				}
			}

			if start < utf8.endIndex {
				append(contentsOf: utf8[start..<utf8.endIndex])
			}
		}
	}
}
