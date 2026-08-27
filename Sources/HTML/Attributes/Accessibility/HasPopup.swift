//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension ARIA {

	/// A type representing availability and type of interactive popup element.
	public enum HasPopup: String, Sendable {

		/// Specifies that element does not have a popup.
		case `false`

		/// Specifies popup is a menu. Same as `.menu`.
		case `true`

		/// Specifies popup is a menu.
		case menu

		/// Specifies popup is a listbox.
		case listbox

		/// Specifies popup is a tree.
		case tree

		/// Specifies popup is a grid.
		case grid

		/// Specifies popup is a dialog.
		case dialog
	}
}

// MARK: -

extension ARIA.HasPopup: ExpressibleByBooleanLiteral {

	/// Creates an instance using a boolean literal.
	@inlinable public init(booleanLiteral value: Bool) {
		self = value ? .true : .false
	}
}
