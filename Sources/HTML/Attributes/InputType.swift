//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTML {

	/// Specifies an input field where the user can enter data.
	public enum InputType: String, Sendable {

		/// Defines a clickable button.
		case button

		/// Defines a checkbox.
		case checkbox

		/// Defines a color picker.
		case color

		/// Defines a date control (`YYYY-MM-DD`).
		case date

		/// Defines a date and time control (`YYYY-MM-DDTHH:mm`).
		case datetimeLocal

		/// Defines a field for an e-mail address.
		case email

		/// Defines a file-select field and a "Browse" button (for file uploads).
		case file

		/// Defines a hidden input field.
		case hidden

		/// Defines an image as the submit button.
		case image

		/// Defines a month and year control (no timezone).
		case month

		/// Defines a field for entering a number.
		case number

		/// Defines a password field.
		case password

		/// Defines a radio button.
		case radio

		/// Defines a range control (like a slider control).
		case range

		/// Defines a reset button.
		case reset

		/// Defines a text field for entering a search string.
		case search

		/// Defines a submit button.
		case submit

		/// Defines a field for entering a telephone number.
		case tel

		/// Defines a single-line text field.
		case text

		/// Defines a control for entering a time (no timezone).
		case time

		/// Defines a field for entering a URL.
		case url

		/// Defines a week and year control (no timezone).
		case week
	}
}
