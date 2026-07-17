//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// Specifies the character encoding for the HTML document.
public enum Charset: String, Sendable {

	/// Standard encoding for the Latin alphabet.
	case latin = "ISO-8859-1"

	/// Character encoding for Unicode. Compatible with ASCII.
	case unicode = "UTF-8"
}
