//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTMLValue {

	/// Specifies if and how the author thinks that the media file should be loaded when the page loads.
	public enum Preload: String, Sendable {

		/// Indicates that the media should not be preloaded.
		case none

		/// Indicates that only media metadata (e.g., length) is fetched.
		case metadata

		/// Indicates that the whole media file can be downloaded, even if the user is not expected to use it.
		case auto
	}
}
