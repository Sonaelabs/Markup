//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTMLValue {

	/// Specifies the direction of the text in an HTML element.
	public enum TextDirection: String, Sendable {

		/// Left-to-right text direction.
		case leftToRight = "ltr"

		/// Right-to-left text direction.
		case rightToLeft = "rtl"

		/// Default (when the `dir` attribute is omitted). Lets the browser infer
		/// text direction from content. Recommended when the direction is unknown.
		case automatic = "auto"
	}
}
