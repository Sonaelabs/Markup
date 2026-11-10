//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension ARIA {

	/// A type representing content editability.
	public enum Invalid: String, Sendable {

		/// Value has failed validation.
		case `true` = "true"

		/// Value has passed validation.
		case `false` = "false"

		/// Grammatical error detected.
		case grammar

		/// Spelling error detected.
		case spelling
	}
}
