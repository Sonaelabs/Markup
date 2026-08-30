//
//  SVG.swift
//  markup
//
//  Created by Felix Gabel on 2026-08-28.
//

public import Markup
public import HTML

public enum SVG {
	public protocol Node: Markup.Node {}
	public protocol Tag: TagDefinition {}

	public enum Trait {}
}

// MARK: -

extension Array: SVG.Node where Element: SVG.Node {}
extension Optional: SVG.Node where Wrapped: SVG.Node {}

extension Compound: SVG.Node where Content: SVG.Node {}
extension Conditional: SVG.Node where First: SVG.Node, Second: SVG.Node {}
extension ForEach: SVG.Node where Content: HTML.Node {}
extension Fragment: SVG.Node where repeat each Child: SVG.Node {}

extension Comment: SVG.Node {}
extension Empty: SVG.Node {}
extension Raw: SVG.Node {}
extension Text: SVG.Node {}

// MARK: -

extension SVG: SVG.Tag, HTML.Tag { public static let name: StaticString = "svg" }

// MARK: - Animations

extension SVG {
	public enum Animate: Tag { public static let name: StaticString = "animate" }
	public enum AnimateMotion: Tag { public static let name: StaticString = "animateMotion" }
	public enum AnimateTransform: Tag { public static let name: StaticString = "animateTransform" }
	public enum Mpath: Tag { public static let name: StaticString = "mpath" }
	public enum Set: Tag { public static let name: StaticString = "set" }
}

// MARK: - Basic shapes

extension SVG {
	public enum Circle: Tag { public static let name: StaticString = "circle" }
	public enum Ellipse: Tag { public static let name: StaticString = "ellipse" }
	public enum Line: Tag { public static let name: StaticString = "line" }
	public enum Polygon: Tag { public static let name: StaticString = "polygon" }
	public enum Polyline: Tag { public static let name: StaticString = "polyline" }
	public enum Rect: Tag { public static let name: StaticString = "rect" }
}

// MARK: - Container elements

extension SVG {
	public enum A: Tag { public static let name: StaticString = "a" }
	public enum Defs: Tag { public static let name: StaticString = "defs" }
	public enum G: Tag { public static let name: StaticString = "g" }
	public enum Marker: Tag { public static let name: StaticString = "marker" }
	public enum Mask: Tag { public static let name: StaticString = "mask" }
	public enum Pattern: Tag { public static let name: StaticString = "pattern" }
	public enum Switch: Tag { public static let name: StaticString = "switch" }
	public enum Symbol: Tag { public static let name: StaticString = "symbol" }
}

// MARK: - Descriptive elements

extension SVG {
	public enum Desc: Tag { public static let name: StaticString = "desc" }
	public enum Metadata: Tag { public static let name: StaticString = "metadata" }
	public enum Title: Tag { public static let name: StaticString = "title" }
}

// MARK: - Filter primitive elements

extension SVG {
	public enum FeBlend: Tag { public static let name: StaticString = "feBlend" }
	public enum FeColorMatrix: Tag { public static let name: StaticString = "feColorMatrix" }
	public enum FeComponentTransfer: Tag { public static let name: StaticString = "feComponentTransfer" }
	public enum FeComposite: Tag { public static let name: StaticString = "feComposite" }
	public enum FeConvolveMatrix: Tag { public static let name: StaticString = "feConvolveMatrix" }
	public enum FeDiffuseLighting: Tag { public static let name: StaticString = "feDiffuseLighting" }
	public enum FeDisplacementMap: Tag { public static let name: StaticString = "feDisplacementMap" }
	public enum FeDropShadow: Tag { public static let name: StaticString = "feDropShadow" }
	public enum FeFlood: Tag { public static let name: StaticString = "feFlood" }
	public enum FeFuncA: Tag { public static let name: StaticString = "feFuncA" }
	public enum FeFuncB: Tag { public static let name: StaticString = "feFuncB" }
	public enum FeFuncG: Tag { public static let name: StaticString = "feFuncG" }
	public enum FeFuncR: Tag { public static let name: StaticString = "feFuncR" }
	public enum FeGaussianBlur: Tag { public static let name: StaticString = "feGaussianBlur" }
	public enum FeImage: Tag { public static let name: StaticString = "feImage" }
	public enum FeMerge: Tag { public static let name: StaticString = "feMerge" }
	public enum FeMergeNode: Tag { public static let name: StaticString = "feMergeNode" }
	public enum FeMorphology: Tag { public static let name: StaticString = "feMorphology" }
	public enum FeOffset: Tag { public static let name: StaticString = "feOffset" }
	public enum FeSpecularLighting: Tag { public static let name: StaticString = "feSpecularLighting" }
	public enum FeTile: Tag { public static let name: StaticString = "feTile" }
	public enum FeTurbulence: Tag { public static let name: StaticString = "feTurbulence" }
}

// MARK: - Gradient elements

extension SVG {
	public enum LinearGradient: Tag { public static let name: StaticString = "linearGradient" }
	public enum RadialGradient: Tag { public static let name: StaticString = "radialGradient" }
	public enum Stop: Tag { public static let name: StaticString = "stop" }
}

// MARK: - Graphics elements

extension SVG {
	public enum Image: Tag { public static let name: StaticString = "image" }
	public enum Path: Tag { public static let name: StaticString = "path" }
	public enum Text: Tag { public static let name: StaticString = "text" }
	public enum Use: Tag { public static let name: StaticString = "use" }
}

// MARK: - Light source elements

extension SVG {
	public enum FeDistantLight: Tag { public static let name: StaticString = "feDistantLight" }
	public enum FePointLight: Tag { public static let name: StaticString = "fePointLight" }
	public enum FeSpotLight: Tag { public static let name: StaticString = "feSpotLight" }
}

// MARK: - Text content child elements

extension SVG {
	public enum TextPath: Tag { public static let name: StaticString = "textPath" }
	public enum Tspan: Tag { public static let name: StaticString = "tspan" }
}

// MARK: - Uncategorized elements

extension SVG {
	public enum ClipPath: Tag { public static let name: StaticString = "clipPath" }
	public enum Filter: Tag { public static let name: StaticString = "filter" }
	public enum View: Tag { public static let name: StaticString = "view" }
}
