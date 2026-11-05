//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension ARIA {

	public enum Role: String, Sendable {

		/// Specifies important, and usually time-sensitive, information.
		case alert

		/// Specifies a button.
		case button

		/// Specifies a button/control cluster.
		case group

		/// Specifies no rule.
		case none

		/// Specifies a presentation.
		case presentation

		/// Specifies a status.
		case status

		/// Specifies a switch.
		case `switch`
	}
}
