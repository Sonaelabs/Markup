//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import HTML

extension SVG.Node {

	/// Renders the node into an HTML string.
	///
	/// - Returns: The rendered html.
	public consuming func draw() -> String {
		var buffer = HTMLRenderer(reservingCapacity: 8 * 1024)
		render(using: &buffer)
		return buffer.read()
	}
}
