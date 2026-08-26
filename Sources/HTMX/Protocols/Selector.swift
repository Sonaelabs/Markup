//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTMX {

	/// A type representing a query selector.
	public protocol QuerySelector: RawRepresentable {
		var rawValue: RawValue { get set }
		init(rawValue: RawValue)
	}
}

// MARK: -

extension HTMX.QuerySelector where RawValue == String {

	/// Creates a `this` query selector.
	@inlinable public static var this: Self {
		.init(rawValue: "this")
	}

	/// Creates a `closest ...` query selector.
	@inlinable public static func closest(_ selector: consuming RawValue) -> Self {
		.init(rawValue: "closest").appending(selector)
	}

	/// Creates a `find ...` query selector.
	@inlinable public static func find(_ selector: consuming RawValue) -> Self {
		.init(rawValue: "find").appending(selector)
	}

	/// Creates a `next ...` query selector.
	@inlinable public static func next(_ selector: consuming RawValue) -> Self {
		.init(rawValue: "next").appending(selector)
	}

	/// Creates a `previous ...` query selector.
	@inlinable public static func previous(_ selector: consuming RawValue) -> Self {
		.init(rawValue: "previous").appending(selector)
	}

	@usableFromInline consuming func appending(_ selector: consuming String) -> Self {
		rawValue.append(" ")
		rawValue.append(selector)
		return self
	}
}

// MARK: -

extension HTMX.QuerySelector where RawValue == String {

	/// Creates a `[name='...']` query selector.
	@inlinable public static func name(_ name: RawValue) -> Self {
		.init(rawValue: "[name='\(name)']")
	}
}
