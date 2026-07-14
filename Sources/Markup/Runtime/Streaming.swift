//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public protocol StreamWriter {

	/// Writes bytes to the network.
	mutating func write(_ bytes: some Sequence<UInt8>) async throws
}

// MARK: -

/// A `Renderer` that is backed by a `StreamWriter` and can flush
/// its internal buffer out over the network if needed.
public protocol StreamRenderer: Renderer {

	/// Flushes buffered bytes. If `force` is false, the renderer decides
	/// based on its own buffer state whether a flush is actually warranted.
	mutating func flushIfNeeded(force: Bool) async throws
}

// MARK: -

extension StreamRenderer {

	/// Flushes buffered bytes if needed.
	@inlinable public mutating func flushIfNeeded() async throws {
		try await flushIfNeeded(force: false)
	}

	/// Flushes buffered bytes unconditionally.
	@inlinable public mutating func flush() async throws {
		try await flushIfNeeded(force: true)
	}
}
