//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// Specifies the appearance of the keyboard on a phone or tablet.
public enum InputMode: String, Sendable {

	/// No keyboard should appear
	case none

	/// Default. Text keyboard
	case text

	/// Numeric only keyboard, usually also a comma key
	case decimal

	/// Numeric only keyboard
	case numeric

	/// Numeric only keyboard, usually also with [+], [*], and [#] keys
	case tel

	/// Text keyboard, usually the [enter] key says [go]
	case search

	/// Text keyboard, with keys typically for e-mail addresses like [@]
	case email

	/// Text keyboard, with keys typically for web addresses like [.] and [/], and a
	/// special [.com] key, or other domain endings that are typically for the local settings.
	case url
}
