//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTML {

	/// Specifies where to open the linked document.
	public enum Target: String, Sendable {

		/// Opens the linked document in a new window or tab.
		case _blank

		/// Opens the linked document in the parent frame.
		case _parent

		/// Opens the linked document in the same frame as it was clicked (this is default).
		case _self

		/// Opens the linked document in the full body of the window.
		case _top
	}
}
