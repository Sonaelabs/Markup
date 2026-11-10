//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// A type representing an elements type.
public enum Role: String, Sendable {

	/// Specifies important, and usually time-sensitive, information.
	case alert

	/// Specifies a button.
	case button

	/// Specifies a button/control cluster.
	case group

	/// Specifies a list.
	case list

	/// Specifies no rule.
	case none

	/// Specifies a presentation.
	case presentation

	/// Specifies a status.
	case status

	/// Specifies a switch.
	case `switch`
}
