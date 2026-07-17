//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public struct HTMLStream<Writer: StreamWriter>: StreamRenderer {

	@usableFromInline let threshold: Int
	@usableFromInline var buffer: HTMLBuffer
	@usableFromInline var writer: Writer

	/// Creates an asynchronous HTML renderer.
	///
	/// - Parameters:
	///   - writer: The stream writer bytes are written to.
	///   - threshold: The buffer size, in bytes, above which the renderer flushes to the writer.
	@usableFromInline init(writer: Writer, threshold: Int) {
		self.buffer = .init(reservingCapacity: threshold + 512)
		self.threshold = threshold
		self.writer = writer
	}

	/// Renders an HTML comment.
	@inlinable public mutating func append(comment: consuming StaticString) {
		buffer.append(comment: comment)
	}

	/// Renders an HTML raw string.
	@inlinable public mutating func append(raw: consuming String) {
		buffer.append(raw: raw)
	}

	/// Renders an HTML text string.
	@inlinable public mutating func append(text: consuming String) {
		buffer.append(text: text)
	}

	/// Renders an HTML element's starting tag and attributes.
	@inlinable public mutating func append<Tag>(start name: consuming String, attributes: consuming [Attribute<Tag>]) {
		buffer.append(start: name, attributes: attributes)
	}

	/// Renders an HTML element's ending tag.
	@inlinable public mutating func append(end name: consuming String) {
		buffer.append(end: name)
	}

	/// Flushes buffered bytes. If `force` is false, the renderer decides
	/// based on its own buffer state whether a flush is actually warranted.
	@inlinable public mutating func flushIfNeeded(force: Bool) async throws {
		guard !buffer.isEmpty, force || buffer.count > threshold else {
			return
		}

		let bytes = buffer.drain()
		try await writer.write(bytes)
	}
}

// MARK: -

extension HTML where Self: Node {

	/// Streams an element into a writer using a threshold for buffer size.
	///
	/// - Parameters:
	///   - writer: The stream writer bytes are written to.
	///   - threshold: The buffer size, in bytes, above which the renderer flushes to the writer.
	@inlinable public consuming func write(into writer: some StreamWriter, threshold: Int = 8 * 1024) async throws {
		var renderer = HTMLStream(writer: writer, threshold: threshold)
		try await stream(using: &renderer)
		try await renderer.flush()
	}
}

// MARK: -

extension HTML where Self: SyncNode {

	/// Renders an element into a writer using a threshold for buffer size.
	///
	/// - Parameters:
	///   - writer: The stream writer bytes are written to.
	///   - threshold: The buffer size, in bytes, above which the renderer flushes to the writer.
	@inlinable public consuming func write(into writer: some StreamWriter, threshold: Int = 8 * 1024) async throws {
		var renderer = HTMLStream(writer: writer, threshold: threshold)
		render(using: &renderer)
		try await renderer.flush()
	}
}
