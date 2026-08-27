//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

public enum ARIA {}

// MARK: -

extension Attribute where Tag: HTML.Tag {

	/// A namespace for aria attributes.
	public enum aria {}

	/// Creates a `role` attribute.
	@inlinable public static func role(_ role: consuming ARIA.Role) -> Attribute<Tag> {
		.init(name: "role", value: role)
	}
}

// MARK: -

extension Attribute.aria {

	/// Creates an `aria-atomic` attribute.
	@inlinable public static func atomic(_ atomic: consuming Bool) -> Attribute<Tag> {
		.init(name: "aria-atomic", value: atomic)
	}

	/// Creates an `aria-busy` attribute.
	@inlinable public static func busy(_ busy: consuming Bool) -> Attribute<Tag> {
		.init(name: "aria-busy", value: busy)
	}

	/// Creates an `aria-controls` attribute.
	@inlinable public static func controls(_ id: consuming HTML.Identifier) -> Attribute<Tag> {
		.init(name: "aria-controls", value: id)
	}

	/// Creates an `aria-controls` attribute.
	@inlinable public static func controls(_ ids: consuming [HTML.Identifier]) -> Attribute<Tag> {
		.init(name: "aria-controls", values: ids, separator: " ")
	}

	/// Creates an `aria-controls` attribute.
	@inlinable public static func controls(_ ids: HTML.Identifier...) -> Attribute<Tag> {
		.init(name: "aria-controls", values: ids, separator: " ")
	}

	/// Creates an `aria-current` attribute.
	@inlinable public static func current(_ current: consuming ARIA.Current) -> Attribute<Tag> {
		.init(name: "aria-current", value: current)
	}

	/// Creates an `aria-describedby` attribute.
	@inlinable public static func described(by id: consuming HTML.Identifier) -> Attribute<Tag> {
		.init(name: "aria-describedby", value: id)
	}

	/// Creates an `aria-describedby` attribute.
	@inlinable public static func described(by ids: consuming [HTML.Identifier]) -> Attribute<Tag> {
		.init(name: "aria-describedby", values: ids, separator: " ")
	}

	/// Creates an `aria-describedby` attribute.
	@inlinable public static func described(by ids: HTML.Identifier...) -> Attribute<Tag> {
		.init(name: "aria-describedby", values: ids, separator: " ")
	}

	/// Creates an `aria-disabled` attribute.
	@inlinable public static func disabled(_ disabled: consuming Bool) -> Attribute<Tag> {
		.init(name: "aria-disabled", value: disabled)
	}

	/// Creates an `aria-haspopup` attribute.
	@inlinable public static func hasPopup(_ haspopup: consuming ARIA.HasPopup) -> Attribute<Tag> {
		.init(name: "aria-haspopup", value: haspopup)
	}

	/// Creates an `aria-hidden` attribute.
	@inlinable public static func hidden(_ hidden: consuming Bool) -> Attribute<Tag> {
		.init(name: "aria-hidden", value: hidden)
	}

	/// Creates an `aria-invalid` attribute.
	@inlinable public static func invalid(_ invalid: consuming ARIA.Invalid) -> Attribute<Tag> {
		.init(name: "aria-invalid", value: invalid)
	}

	/// Creates an `aria-label` attribute.
	@inlinable public static func label(_ label: consuming String) -> Attribute<Tag> {
		.init(name: "aria-label", value: label)
	}

	/// Creates an `aria-labelledby` attribute.
	@inlinable public static func labelled(by id: consuming HTML.Identifier) -> Attribute<Tag> {
		.init(name: "aria-labelledby", value: id)
	}

	/// Creates an `aria-labelledby` attribute.
	@inlinable public static func labelled(by ids: consuming [HTML.Identifier]) -> Attribute<Tag> {
		.init(name: "aria-labelledby", values: ids, separator: " ")
	}

	/// Creates an `aria-labelledby` attribute.
	@inlinable public static func labelled(by ids: HTML.Identifier...) -> Attribute<Tag> {
		.init(name: "aria-labelledby", values: ids, separator: " ")
	}

	/// Creates an `aria-live` attribute.
	@inlinable public static func live(_ live: consuming ARIA.Live) -> Attribute<Tag> {
		.init(name: "aria-live", value: live)
	}
}

// MARK: -

extension Attribute.aria {

	/// Creates an `aria-expanded` attribute.
	@inlinable public static func expanded(_ expanded: consuming Bool) -> Attribute<Tag> {
		.init(name: "aria-expanded", value: expanded)
	}

	/// Creates an `aria-modal` attribute.
	@inlinable public static func modal(_ modal: consuming Bool) -> Attribute<Tag> {
		.init(name: "aria-modal", value: modal)
	}

	/// Creates an `aria-pressed` attribute.
	@inlinable public static func pressed(_ pressed: consuming ARIA.Pressed) -> Attribute<Tag> {
		.init(name: "aria-pressed", value: pressed)
	}

	/// Creates an `aria-sort` attribute.
	@inlinable public static func sort(_ sort: consuming ARIA.Sort) -> Attribute<Tag> {
		.init(name: "aria-sort", value: sort)
	}
}
