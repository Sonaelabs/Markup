//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTMLValue {

	/// Specifies how the form-data should be encoded when submitting it to the server.
	public enum EncType: String, Sendable {

		/// All characters are encoded before sent (spaces are converted to "+" symbols,
		/// and special characters are converted to ASCII HEX values)
		case application = "application/x-www-form-urlencoded"

		/// This value is necessary if the user will upload a file through the form.
		case multipart = "multipart/form-data"

		#if DEBUG
		/// Sends data without any encoding at all.
		case text = "text/plain"
		#endif
	}
}
