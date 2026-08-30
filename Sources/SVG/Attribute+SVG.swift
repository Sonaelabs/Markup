//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public import Markup

extension SVG.Trait {
	public protocol Center {}	// TODO: conditional support for percentage
	public protocol Corner {}	// TODO: conditional support for percentage
	public protocol Fill {}
	public protocol Linear {}
	public protocol Opacity {}
	public protocol Origin {}	// TODO: conditional support for percentage
	public protocol Points {}
	public protocol Radius {}	// TODO: conditional support for percentage
	public protocol Size {}		// TODO: conditional support for percentage
	public protocol Stroke {}
	public protocol ViewBox {}
}

// MARK: -

extension SVG.Circle: SVG.Trait.Center {}
extension SVG.Ellipse: SVG.Trait.Center {}
extension SVG.RadialGradient: SVG.Trait.Center {}

extension Attribute where Tag: SVG.Trait.Center {

	/// Creates a `cx` attribute.
	@inlinable public static func cx(_ cx: consuming SVG.Length) -> Self {
		.init(name: "cx", value: cx)
	}

	/// Creates a `cy` attribute.
	@inlinable public static func cy(_ cy: consuming SVG.Length) -> Self {
		.init(name: "cx", value: cy)
	}

	/// Creates a `cx` attribute.
	@inlinable public static func cx(_ cx: consuming SVG.Number, _ unit: consuming SVG.Length) -> Self {
		.init(name: "cx", value: cx.rawValue + unit.rawValue)
	}

	/// Creates a `cy` attribute.
	@inlinable public static func cy(_ cy: consuming SVG.Number, _ unit: consuming SVG.Length) -> Self {
		.init(name: "cy", value: cy.rawValue + unit.rawValue)
	}

	/// Creates a `cx` attribute.
	@inlinable public static func cx(_ cx: consuming SVG.Percentage) -> Self {
		.init(name: "cx", value: cx)
	}

	/// Creates a `cy` attribute.
	@inlinable public static func cy(_ cy: consuming SVG.Percentage) -> Self {
		.init(name: "cy", value: cy)
	}
}

// MARK: -

extension SVG.Ellipse: SVG.Trait.Corner {}
extension SVG.Rect: SVG.Trait.Corner {}

extension Attribute where Tag: SVG.Trait.Corner {

	/// Creates a `rx` attribute.
	@inlinable public static func rx(_ rx: consuming SVG.Number) -> Self {
		.init(name: "rx", value: rx)
	}

	/// Creates a `ry` attribute.
	@inlinable public static func ry(_ ry: consuming SVG.Number) -> Self {
		.init(name: "ry", value: ry)
	}

	/// Creates a `rx` attribute.
	@inlinable public static func rx(_ rx: consuming SVG.Number, _ unit: consuming SVG.Length) -> Self {
		.init(name: "rx", value: rx.rawValue + unit.rawValue)
	}

	/// Creates a `ry` attribute.
	@inlinable public static func ry(_ ry: consuming SVG.Number, _ unit: consuming SVG.Length) -> Self {
		.init(name: "ry", value: ry.rawValue + unit.rawValue)
	}

	/// Creates a `rx` attribute.
	@inlinable public static func rx(_ rx: consuming SVG.Percentage) -> Self {
		.init(name: "rx", value: rx)
	}

	/// Creates a `ry` attribute.
	@inlinable public static func ry(_ ry: consuming SVG.Percentage) -> Self {
		.init(name: "ry", value: ry)
	}
}

// MARK: -

extension SVG: SVG.Trait.Fill {}
extension SVG.Circle: SVG.Trait.Fill {}
extension SVG.Ellipse: SVG.Trait.Fill {}
extension SVG.Path: SVG.Trait.Fill {}
extension SVG.Polygon: SVG.Trait.Fill {}
extension SVG.Polyline: SVG.Trait.Fill {}
extension SVG.Rect: SVG.Trait.Fill {}
extension SVG.Text: SVG.Trait.Fill {}
extension SVG.TextPath: SVG.Trait.Fill {}
extension SVG.Tspan: SVG.Trait.Fill {}

extension Attribute where Tag: SVG.Trait.Fill {

	/// Creates a `fill` attribute.
	@inlinable public static func fill(_ fill: consuming SVG.Paint) -> Self {
		.init(name: "fill", value: fill)
	}

	/// Creates a `fill-opacity` attribute.
	@inlinable public static func fill(opacity: consuming SVG.Opacity) -> Self {
		.init(name: "fill-opacity", value: opacity)
	}

	/// Creates a `fill-rule` attribute.
	@inlinable public static func fill(rule: consuming SVG.FillRule) -> Self {
		.init(name: "fill-opacity", value: rule)
	}
}

// MARK: -

extension SVG.Line: SVG.Trait.Linear {}
extension SVG.LinearGradient: SVG.Trait.Linear {}

extension Attribute where Tag: SVG.Trait.Linear {

	/// Creates a `x1` attribute.
	@inlinable public static func x1(_ x1: consuming SVG.Number) -> Self {
		.init(name: "x1", value: x1)
	}

	/// Creates a `y1` attribute.
	@inlinable public static func y1(_ y1: consuming SVG.Number) -> Self {
		.init(name: "y1", value: y1)
	}

	/// Creates a `x1` attribute.
	@inlinable public static func x1(_ x1: consuming SVG.Number, _ unit: consuming SVG.Length) -> Self {
		.init(name: "x1", value: x1.rawValue + unit.rawValue)
	}

	/// Creates a `y1` attribute.
	@inlinable public static func y1(_ y1: consuming SVG.Number, _ unit: consuming SVG.Length) -> Self {
		.init(name: "y1", value: y1.rawValue + unit.rawValue)
	}

	/// Creates a `x1` attribute.
	@inlinable public static func x1(_ x1: consuming SVG.Percentage) -> Self {
		.init(name: "x1", value: x1)
	}

	/// Creates a `y1` attribute.
	@inlinable public static func y1(_ y1: consuming SVG.Percentage) -> Self {
		.init(name: "y1", value: y1)
	}

	/// Creates a `x2` attribute.
	@inlinable public static func x2(_ x2: consuming SVG.Number) -> Self {
		.init(name: "x2", value: x2)
	}

	/// Creates a `y2` attribute.
	@inlinable public static func y2(_ y2: consuming SVG.Number) -> Self {
		.init(name: "y2", value: y2)
	}

	/// Creates a `x2` attribute.
	@inlinable public static func x2(_ x2: consuming SVG.Number, _ unit: consuming SVG.Length) -> Self {
		.init(name: "x2", value: x2.rawValue + unit.rawValue)
	}

	/// Creates a `y2` attribute.
	@inlinable public static func y2(_ y2: consuming SVG.Number, _ unit: consuming SVG.Length) -> Self {
		.init(name: "y2", value: y2.rawValue + unit.rawValue)
	}

	/// Creates a `x2` attribute.
	@inlinable public static func x2(_ x2: consuming SVG.Percentage) -> Self {
		.init(name: "x2", value: x2)
	}

	/// Creates a `y2` attribute.
	@inlinable public static func y2(_ y2: consuming SVG.Percentage) -> Self {
		.init(name: "y2", value: y2)
	}
}

// MARK: -

extension SVG: SVG.Trait.Opacity {}
extension SVG.A: SVG.Trait.Opacity {}
extension SVG.Circle: SVG.Trait.Opacity {}
extension SVG.Ellipse: SVG.Trait.Opacity {}
extension SVG.G: SVG.Trait.Opacity {}
extension SVG.Image: SVG.Trait.Opacity {}
extension SVG.Line: SVG.Trait.Opacity {}
extension SVG.Marker: SVG.Trait.Opacity {}
extension SVG.Path: SVG.Trait.Opacity {}
extension SVG.Polygon: SVG.Trait.Opacity {}
extension SVG.Polyline: SVG.Trait.Opacity {}
extension SVG.Rect: SVG.Trait.Opacity {}
extension SVG.Switch: SVG.Trait.Opacity {}
extension SVG.Symbol: SVG.Trait.Opacity {}
extension SVG.Text: SVG.Trait.Opacity {}
extension SVG.TextPath: SVG.Trait.Opacity {}
extension SVG.Tspan: SVG.Trait.Opacity {}
extension SVG.Use: SVG.Trait.Opacity {}

extension Attribute where Tag: SVG.Trait.Opacity {

	/// Creates a `opacity` attribute.
	@inlinable public static func opacity(_ opacity: consuming SVG.Opacity) -> Self {
		.init(name: "opacity", value: opacity)
	}
}

// MARK: -

extension SVG: SVG.Trait.Origin {}
extension SVG.Filter: SVG.Trait.Origin {}
extension SVG.Image: SVG.Trait.Origin {}
extension SVG.Mask: SVG.Trait.Origin {}
// extension SVG.Pattern: SVG.Trait.Origin {}
extension SVG.Rect: SVG.Trait.Origin {}
extension SVG.Text: SVG.Trait.Origin {}
extension SVG.Tspan: SVG.Trait.Origin {}
extension SVG.Use: SVG.Trait.Origin {}

extension Attribute where Tag: SVG.Trait.Origin {

	/// Creates a `x` attribute.
	@inlinable public static func x(_ x: consuming SVG.Number) -> Self {
		.init(name: "x", value: x)
	}

	/// Creates a `y` attribute.
	@inlinable public static func y(_ y: consuming SVG.Number) -> Self {
		.init(name: "y", value: y)
	}

	/// Creates a `x` attribute.
	@inlinable public static func x(_ x: consuming SVG.Number, _ unit: consuming SVG.Length) -> Self {
		.init(name: "x", value: x.rawValue + unit.rawValue)
	}

	/// Creates a `y` attribute.
	@inlinable public static func y(_ y: consuming SVG.Number, _ unit: consuming SVG.Length) -> Self {
		.init(name: "y", value: y.rawValue + unit.rawValue)
	}

	/// Creates a `x` attribute.
	@inlinable public static func x(_ x: consuming SVG.Percentage) -> Self {
		.init(name: "x", value: x)
	}

	/// Creates a `y` attribute.
	@inlinable public static func y(_ y: consuming SVG.Percentage) -> Self {
		.init(name: "y", value: y)
	}
}

// MARK: -

extension SVG.Polygon: SVG.Trait.Points {}
extension SVG.Polyline: SVG.Trait.Points {}

extension Attribute where Tag: SVG.Trait.Points {

	/// Creates an `points` attribute.
	@inlinable public static func points(_ points: consuming String) -> Self {
		.init(name: "points", value: points)
	}
}

// MARK: -

extension SVG.Circle: SVG.Trait.Radius {}
extension SVG.RadialGradient: SVG.Trait.Radius {}

extension Attribute where Tag: SVG.Trait.Radius {

	/// Creates an `r` attribute.
	@inlinable public static func r(_ r: consuming SVG.Number) -> Self {
		.init(name: "r", value: r)
	}

	/// Creates a `r` attribute.
	@inlinable public static func r(_ r: consuming SVG.Number, _ unit: consuming SVG.Length) -> Self {
		.init(name: "r", value: r.rawValue + unit.rawValue)
	}
}

// MARK: -

extension SVG: SVG.Trait.Size {}
extension SVG.Filter: SVG.Trait.Size {}
extension SVG.Image: SVG.Trait.Size {}
extension SVG.Mask: SVG.Trait.Size {}
// extension SVG.Pattern: SVG.Trait.Size {}
extension SVG.Rect: SVG.Trait.Size {}
extension SVG.Use: SVG.Trait.Size {}

extension Attribute where Tag: SVG.Trait.Size {

	/// Creates a `width` attribute.
	@inlinable public static func width(_ width: consuming SVG.Number) -> Self {
		.init(name: "width", value: width)
	}

	/// Creates a `height` attribute.
	@inlinable public static func height(_ height: consuming SVG.Number) -> Self {
		.init(name: "height", value: height)
	}

	/// Creates a `width` attribute.
	@inlinable public static func width(_ width: consuming SVG.Number, _ unit: consuming SVG.Length) -> Self {
		.init(name: "width", value: width.rawValue + unit.rawValue)
	}

	/// Creates a `height` attribute.
	@inlinable public static func height(_ height: consuming SVG.Number, _ unit: consuming SVG.Length) -> Self {
		.init(name: "height", value: height.rawValue + unit.rawValue)
	}

	/// Creates a `width` attribute.
	@inlinable public static func width(_ width: consuming SVG.Percentage) -> Self {
		.init(name: "width", value: width)
	}

	/// Creates a `height` attribute.
	@inlinable public static func height(_ height: consuming SVG.Percentage) -> Self {
		.init(name: "height", value: height)
	}
}

// MARK: -

extension SVG: SVG.Trait.Stroke {}
extension SVG.Circle: SVG.Trait.Stroke {}
extension SVG.Ellipse: SVG.Trait.Stroke {}
extension SVG.Line: SVG.Trait.Stroke {}
extension SVG.Path: SVG.Trait.Stroke {}
extension SVG.Polygon: SVG.Trait.Stroke {}
extension SVG.Polyline: SVG.Trait.Stroke {}
extension SVG.Rect: SVG.Trait.Stroke {}
extension SVG.Text: SVG.Trait.Stroke {}
extension SVG.TextPath: SVG.Trait.Stroke {}
extension SVG.Tspan: SVG.Trait.Stroke {}

extension Attribute where Tag: SVG.Trait.Stroke {

	/// Creates a `stroke` attribute.
	@inlinable public static func stroke(_ stroke: consuming SVG.Paint) -> Self {
		.init(name: "stroke", value: stroke)
	}

	/// Creates a `stroke-dasharray` attribute.
	@inlinable public static func stroke(dashArray: consuming String) -> Self {
		.init(name: "stroke-dasharray", value: dashArray)
	}

	/// Creates a `stroke-dashoffset` attribute.
	@inlinable public static func stroke(dashOffset: consuming String) -> Self {
		.init(name: "stroke-dashoffset", value: dashOffset)
	}

	/// Creates a `stroke-linecap` attribute.
	@inlinable public static func stroke(lineCap: consuming SVG.LineCap) -> Self {
		.init(name: "stroke-linecap", value: lineCap)
	}

	/// Creates a `stroke-linejoin` attribute.
	@inlinable public static func stroke(lineJoin: consuming SVG.LineJoin) -> Self {
		.init(name: "stroke-linejoin", value: lineJoin)
	}

	/// Creates a `stroke-miterlimit` attribute.
	@inlinable public static func stroke(miterLimit: consuming String) -> Self {
		.init(name: "stroke-miterlimit", value: miterLimit)
	}

	/// Creates a `stroke-opacity` attribute.
	@inlinable public static func stroke(opacity: consuming SVG.Opacity) -> Self {
		.init(name: "stroke-opacity", value: opacity)
	}

	/// Creates a `stroke-width` attribute.
	@inlinable public static func stroke(width: consuming SVG.Number) -> Self {
		.init(name: "stroke-width", value: width)
	}

	/// Creates a `stroke-width` attribute.
	@inlinable public static func stroke(width: consuming SVG.Percentage) -> Self {
		.init(name: "stroke-width", value: width)
	}
}

// MARK: -

extension SVG: SVG.Trait.ViewBox {}
extension SVG.Marker: SVG.Trait.ViewBox {}
extension SVG.Pattern: SVG.Trait.ViewBox {}
extension SVG.Symbol: SVG.Trait.ViewBox {}
extension SVG.View: SVG.Trait.ViewBox {}

extension Attribute where Tag: SVG.Trait.ViewBox {

	/// Creates a `viewBox` attribute.
	@inlinable public static func viewBox(_ x: consuming Int, _ y: consuming Int, _ w: consuming Int, _ h: consuming Int) -> Self {
		.init(name: "viewBox", value: "\(x) \(y) \(w) \(h)")
	}
}

// MARK: -

extension Attribute where Tag == SVG {

	/// Creates a `preserveAspectRatio` attribute.
	@inlinable public static func preserveAspectRatio(_ value: consuming String) -> Self {
		.init(name: "preserveAspectRatio", value: value)
	}

	/// Creates an `xmlns` attribute.
	@inlinable public static func xmlns(_ value: consuming String) -> Self {
		.init(name: "xmlns", value: value) // TODO: add enum case http://www.w3.org/2000/svg
	}
}

// MARK: -

extension Attribute where Tag == SVG.Circle {

	/// Creates an `r` attribute.
	@inlinable public static func r(_ r: consuming SVG.Percentage) -> Self {
		.init(name: "r", value: r)
	}
}

// MARK: -

extension Attribute where Tag == SVG.Path {

	/// Creates an `d` attribute.
	@inlinable public static func d(_ d: consuming String) -> Self {
		.init(name: "d", value: d)
	}
}
