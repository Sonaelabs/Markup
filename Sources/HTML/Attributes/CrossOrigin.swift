//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTML {

	public enum CrossOrigin: String, Sendable {

		/// Specifies credentials flag is set to `same-origin`.
		case anonymous

		/// Specifies credentials flag is set to `include`.
		case useCredentials = "use-credentials"
	}
}
