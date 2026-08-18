//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTMLValue {

	/// Specifies the type of button.
	public enum ButtonType: String, Sendable {

		/// The button submits the form data (default when `type` is omitted).
		case submit

		/// The button resets all form controls to their initial values.
		case reset

		/// The button has no default behavior.
		case button
	}
}
