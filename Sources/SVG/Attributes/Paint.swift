//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public struct Paint: RawRepresentable, Sendable {

	public let rawValue: String

	@inlinable public init(rawValue: String) {
		self.rawValue = rawValue
	}
}

// MARK: -

extension Paint {

	public static var none: Self { "none" }
	public static var transparent: Self { "transparent" }
	public static var currentColor: Self { "currentColor" }

	public static var inherit: Self { "inherit" }
	public static var initial: Self { "initial" }
	public static var unset: Self { "unset" }
	public static var revert: Self { "revert" }
	public static var revertLayer: Self { "revert-layer" }

}

// MARK: -

extension Paint {

	/// Returns paint formated as `rgb(r g b)`.
	public static func rgb(_ r: Int, _ g: Int, _ b: Int) -> Self {
		.init(rawValue: "rgb(\(r) \(g) \(b))")
	}

	/// Returns paint formated as `rgb(r% g% b%)`.
	public static func rgb(_ r: Percentage, _ g: Percentage, _ b: Percentage) -> Self {
		.init(rawValue: "rgb(\(r.rawValue) \(g.rawValue) \(b.rawValue))")
	}

	/// Returns paint formated as `rgb(r g b / a)`.
	public static func rgb(_ r: Int, _ g: Int, _ b: Int, _ a: Double) -> Self {
		.init(rawValue: "rgb(\(r) \(g) \(b) / \(a))")
	}

	/// Returns paint formated as `rgb(r g b / a%)`.
	public static func rgb(_ r: Int, _ g: Int, _ b: Int, _ a: Percentage) -> Self {
		.init(rawValue: "rgb(\(r) \(g) \(b) / \(a))")
	}
}

// MARK: -

extension Paint: ExpressibleByStringLiteral {
	
	@inlinable public init(stringLiteral value: String) {
		self.init(rawValue: value)
	}
}
