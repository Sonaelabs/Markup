//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension ARIA {

	/// A type indicating that an element will be updated.
	public enum Live: String, Sendable {

		/// Specifies highest priority and should be presented to the user immediately.
		case assertive

		/// Specifies updates should be presented at the next graceful opportunity,
		/// such as at the end of speaking the current sentence or when the user pauses typing.
		case polite

		/// Specifies updates not be presented to the user unless the user is currently focused on that region.
		case off
	}
}
