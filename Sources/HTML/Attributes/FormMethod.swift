//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// Specifies the HTTP method to use when sending form-data.
public enum FormMethod: String, Sendable {

	/// Appends the form-data to the URL in name/value pairs.
	case get

	/// Sends the form-data as an HTTP post transaction.
	case post

	/// When the form is inside a <dialog> element, it closes
	/// the dialog and causes a submit event to be executed on
	/// submission, without submitting data or clearing the form.
	case dialog
}
