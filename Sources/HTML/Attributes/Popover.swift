//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTML {

	/// Specifies a popover element.
	public enum Popover: String, Sendable {

		/// Light-dismissible and auto-closing: can be closed by clicking outside
		/// it, opening another popover, or pressing Esc. Showing a second `auto`
		/// popover generally closes the first, except for nested `auto` popovers.
		/// The default when the `popover` attribute is present with no value
		/// (or omitted with a valid target). Suited to menus, share sheets, and
		/// similar dismissible overlays.
		case auto

		/// Light-dismissible like `auto`, but doesn't close open `auto` popovers
		/// when shown, and only closes other `hint` popovers (not their
		/// ancestors). Intended for transient, ephemeral UI shown in response to
		/// non-click events such as hover or focus — tooltips and similar hints
		/// that shouldn't dismiss an open menu or dialog.
		case hint

		/// Not light-dismissible and not automatically closed — must be shown
		/// and hidden explicitly via script or a control button. Multiple
		/// `manual` popovers can be shown simultaneously, and they don't
		/// participate in the `auto`/`hint` stacking behavior at all.
		case manual
	}
}

// MARK: -

extension HTML {

	/// Specifies what happens when the control is activated.
	public enum PopoverAction: String, Sendable {

		/// Toggle the popover. If the popover is shown, hide it. If it is hidden, show it.
		case toggle

		/// Show the popover.
		case show

		/// Hide the popover.
		case hide
	}
}
