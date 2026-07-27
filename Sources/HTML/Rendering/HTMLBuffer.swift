//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

/// A `Renderer` that accumulates HTML into an in-memory byte buffer.
public struct HTMLBuffer: Renderer {
	public typealias Storage = [UInt8]

	/// The buffer holding the rendered bytes.
	@usableFromInline var storage: Storage = []

	@inlinable public var count: Int { storage.count }
	@inlinable public var isEmpty: Bool { storage.isEmpty }

	/// Creates an HTML renderer reserving the given buffer capacity.
	///
	/// - Parameter capacity: The number of bytes to reserve up front.
	@usableFromInline init(reservingCapacity capacity: Int) {
		storage.reserveCapacity(capacity)
	}

	/// Renders an HTML comment.
	@inlinable public mutating func append(comment: consuming StaticString) {
		storage.append(contentsOf: Storage.commentStart)
		comment.withUTF8Buffer { utf8 in
			storage.append(contentsOf: utf8)
		}
		storage.append(contentsOf: Storage.commentEnd)
	}

	/// Renders an HTML raw string.
	@inlinable public mutating func append(raw: consuming String) {
		raw.withUTF8 { utf8 in
			storage.append(contentsOf: utf8)
		}
	}

	/// Renders an HTML text string.
	@inlinable public mutating func append(text: consuming String) {
		storage.appendEscapedText(text)
	}

	/// Renders an HTML element's starting tag and attributes.
	@inlinable public mutating func append<Tag: TagDefinition>(start tag: Tag.Type, attributes: consuming [Attribute<Tag>]) {
		storage.append(60) // <
		storage.append(contentsOf: tag.name.utf8)

		for attribute in attributes {
			storage.append(32) // space
			storage.append(contentsOf: attribute.name.utf8)

			if let value = attribute.value {
				storage.append(contentsOf: [61, 34]) // ="
				storage.appendEscapedAttribute(value)
				storage.append(34) // "
			}
		}

		storage.append(62) // >
	}

	/// Renders an HTML element's ending tag.
	@inlinable public mutating func append<Tag: TagDefinition>(end tag: Tag.Type) {
		storage.append(contentsOf: [60, 47]) // </
		storage.append(contentsOf: tag.name.utf8)
		storage.append(62) // >
	}

	/// Returns the accumulated bytes and empties the buffer, keeping its capacity for reuse.
	///
	/// - Returns: The buffered bytes rendered so far.
	@inlinable public mutating func drain() -> ArraySlice<Storage.Element> {
		defer { storage.removeAll(keepingCapacity: true) }
		return storage[...]
	}

	/// Renders the buffered html into a string.
	///
	/// - Returns: The rendered html string.
	@inlinable public consuming func read() -> String {
		.init(decoding: storage, as: UTF8.self)
	}
}

// MARK: -

extension HTML where Self: SyncNode {

	/// Renders the node into an HTML string.
	///
	/// - Returns: The rendered html.
	public consuming func write() -> String {
		var buffer = HTMLBuffer(reservingCapacity: 8 * 1024)
		render(using: &buffer)
		return buffer.read()
	}
}

// MARK: -

extension HTMLBuffer.Storage {

	@usableFromInline static let commentStart: Self	= .init("<!-- ".utf8)
	@usableFromInline static let commentEnd: Self	= .init(" -->".utf8)

	private static let ampersand: Self		= .init("&amp;".utf8)
	private static let lessthan: Self		= .init("&lt;".utf8)
	private static let greaterthan: Self	= .init("&gt;".utf8)
	private static let quotation: Self		= .init("&quot;".utf8)

	@usableFromInline mutating func appendEscapedText(_ string: consuming String) {
		string.withUTF8 { utf8 in
			reserveCapacity(count + utf8.count)

			var start = utf8.startIndex

			for index in utf8.indices {
				switch utf8[index] {
					case 38: // &
						append(contentsOf: utf8[start..<index])
						append(contentsOf: Self.ampersand)
						start = utf8.index(after: index)
					case 60: // <
						append(contentsOf: utf8[start..<index])
						append(contentsOf: Self.lessthan)
						start = utf8.index(after: index)
					case 62: // >
						append(contentsOf: utf8[start..<index])
						append(contentsOf: Self.greaterthan)
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
			reserveCapacity(count + utf8.count)

			var start = utf8.startIndex

			for index in utf8.indices {
				switch utf8[index] {
					case 38: // &
						append(contentsOf: utf8[start..<index])
						append(contentsOf: Self.ampersand)
						start = utf8.index(after: index)
					case 34: // "
						append(contentsOf: utf8[start..<index])
						append(contentsOf: Self.quotation)
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
