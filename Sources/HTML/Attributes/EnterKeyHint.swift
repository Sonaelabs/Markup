//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// Specifies the appearance of the "Enter" key on a virtual keyboard.
public enum EnterKeyHint: String, Sendable {

	/// The enter key says "Enter"
	case enter

	/// The enter key says "Done"
	case done

	/// The enter key says "Go"
	case go

	/// The enter key says "Next"
	case next

	/// The enter key says "Previous"
	case previous

	/// The enter key says "Search"
	case search

	/// The enter key says "Send"
	case send
}
