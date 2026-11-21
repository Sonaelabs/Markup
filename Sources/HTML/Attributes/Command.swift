//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A type representing an invoker command.
public struct Command: Hashable, Sendable {

	@usableFromInline let name: String

	private init(name: String) {
		self.name = name
	}
}

// MARK: -

extension Command {

	/// Shows a `<dialog>` as modal if not open.
	public static let showModal: Self = .init(name: "show-modal")

	/// Closes a `<dialog>` if open.
	public static let requestClose: Self = .init(name: "request-close")

	/// Requests to close a `<dialog>` if open.
	public static let close: Self = .init(name: "close")

	/// Shows the popover if closed, otherwise hides.
	public static let togglePopover: Self = .init(name: "toggle-popover")

	/// Hides the popover if open, otherwise does nothing.
	public static let showPopover: Self = .init(name: "show-popover")

	/// Shows the popover if closed, otherwise does nothing.
	public static let hidePopover: Self = .init(name: "hide-popover")

	/// Creates a custom command using #function as default name.
	public static func custom(_ name: String = #function) -> Self {
		.init(name: "--" + name)
	}
}
