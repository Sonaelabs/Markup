//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Markup

extension [UInt8]: HTMLBuffer {}

// MARK: -

extension HTMLRenderer where Buffer == [UInt8] {

	/// Creates a renderer backed by an array, reserving the given capacity.
	///
	/// - Parameter capacity: The number of bytes to reserve up front.
	@inlinable public init(reservingCapacity capacity: Int) {
		var buffer = Buffer()
		buffer.reserveCapacity(capacity)
		self.init(using: buffer)
	}

	/// Consumes the renderer and decodes the rendered bytes into a string.
	///
	/// - Returns: The rendered html string.
	@inlinable public consuming func read() -> String {
		.init(decoding: finish(), as: UTF8.self)
	}
}

// MARK: -

extension HTML.Element {

	/// Renders the node into an HTML string.
	///
	/// - Returns: The rendered html.
	public consuming func write() -> String {
		var buffer = HTMLRenderer(reservingCapacity: 8 * 1024)
		render(using: &buffer)
		return buffer.read()
	}
}

