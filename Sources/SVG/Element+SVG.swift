//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import HTML

public typealias svg<Content: SVG.Node> = SVG.Element<SVG, Content>
extension SVG.Element: HTML.Node where Tag == SVG {}

// MARK: - Animations

public typealias animate<Content: SVG.Node> = SVG.Element<SVG.Animate, Content>
public typealias animateMotion<Content: SVG.Node> = SVG.Element<SVG.AnimateMotion, Content>
public typealias animateTransform<Content: SVG.Node> = SVG.Element<SVG.AnimateTransform, Content>
public typealias mpath<Content: SVG.Node> = SVG.Element<SVG.Mpath, Content>
public typealias `set`<Content: SVG.Node> = SVG.Element<SVG.Set, Content>

// MARK: - Basic shapes

public typealias circle<Content: SVG.Node> = SVG.Element<SVG.Circle, Content>
public typealias ellipse<Content: SVG.Node> = SVG.Element<SVG.Ellipse, Content>
public typealias line<Content: SVG.Node> = SVG.Element<SVG.Line, Content>
public typealias polygon<Content: SVG.Node> = SVG.Element<SVG.Polygon, Content>
public typealias polyline<Content: SVG.Node> = SVG.Element<SVG.Polyline, Content>
public typealias rect<Content: SVG.Node> = SVG.Element<SVG.Rect, Content>

// MARK: - Container elements

public typealias a<Content: SVG.Node> = SVG.Element<SVG.A, Content>
public typealias defs<Content: SVG.Node> = SVG.Element<SVG.Defs, Content>
public typealias g<Content: SVG.Node> = SVG.Element<SVG.G, Content>
public typealias marker<Content: SVG.Node> = SVG.Element<SVG.Marker, Content>
public typealias mask<Content: SVG.Node> = SVG.Element<SVG.Mask, Content>
public typealias pattern<Content: SVG.Node> = SVG.Element<SVG.Pattern, Content>
public typealias `switch`<Content: SVG.Node> = SVG.Element<SVG.Switch, Content>
public typealias symbol<Content: SVG.Node> = SVG.Element<SVG.Symbol, Content>

// MARK: - Descriptive elements

public typealias desc<Content: SVG.Node> = SVG.Element<SVG.Desc, Content>
public typealias metadata<Content: SVG.Node> = SVG.Element<SVG.Metadata, Content>
public typealias title<Content: SVG.Node> = SVG.Element<SVG.Title, Content>

// MARK: - Filter primitive elements

public typealias feBlend<Content: SVG.Node> = SVG.Element<SVG.FeBlend, Content>
public typealias feColorMatrix<Content: SVG.Node> = SVG.Element<SVG.FeColorMatrix, Content>
public typealias feComponentTransfer<Content: SVG.Node> = SVG.Element<SVG.FeComponentTransfer, Content>
public typealias feComposite<Content: SVG.Node> = SVG.Element<SVG.FeComposite, Content>
public typealias feConvolveMatrix<Content: SVG.Node> = SVG.Element<SVG.FeConvolveMatrix, Content>
public typealias feDiffuseLighting<Content: SVG.Node> = SVG.Element<SVG.FeDiffuseLighting, Content>
public typealias feDisplacementMap<Content: SVG.Node> = SVG.Element<SVG.FeDisplacementMap, Content>
public typealias feDropShadow<Content: SVG.Node> = SVG.Element<SVG.FeDropShadow, Content>
public typealias feFlood<Content: SVG.Node> = SVG.Element<SVG.FeFlood, Content>
public typealias feFuncA<Content: SVG.Node> = SVG.Element<SVG.FeFuncA, Content>
public typealias feFuncB<Content: SVG.Node> = SVG.Element<SVG.FeFuncB, Content>
public typealias feFuncG<Content: SVG.Node> = SVG.Element<SVG.FeFuncG, Content>
public typealias feFuncR<Content: SVG.Node> = SVG.Element<SVG.FeFuncR, Content>
public typealias feGaussianBlur<Content: SVG.Node> = SVG.Element<SVG.FeGaussianBlur, Content>
public typealias feImage<Content: SVG.Node> = SVG.Element<SVG.FeImage, Content>
public typealias feMerge<Content: SVG.Node> = SVG.Element<SVG.FeMerge, Content>
public typealias feMergeNode<Content: SVG.Node> = SVG.Element<SVG.FeMergeNode, Content>
public typealias feMorphology<Content: SVG.Node> = SVG.Element<SVG.FeMorphology, Content>
public typealias feOffset<Content: SVG.Node> = SVG.Element<SVG.FeOffset, Content>
public typealias feSpecularLighting<Content: SVG.Node> = SVG.Element<SVG.FeSpecularLighting, Content>
public typealias feTile<Content: SVG.Node> = SVG.Element<SVG.FeTile, Content>
public typealias feTurbulence<Content: SVG.Node> = SVG.Element<SVG.FeTurbulence, Content>

// MARK: - Gradient elements

public typealias linearGradient<Content: SVG.Node> = SVG.Element<SVG.LinearGradient, Content>
public typealias radialGradient<Content: SVG.Node> = SVG.Element<SVG.RadialGradient, Content>
public typealias stop<Content: SVG.Node> = SVG.Element<SVG.Stop, Content>

// MARK: - Graphics elements

public typealias image<Content: SVG.Node> = SVG.Element<SVG.Image, Content>
public typealias path<Content: SVG.Node> = SVG.Element<SVG.Path, Content>
public typealias text<Content: SVG.Node> = SVG.Element<SVG.Text, Content>
public typealias use<Content: SVG.Node> = SVG.Element<SVG.Use, Content>

// MARK: - Light source elements

public typealias feDistantLight<Content: SVG.Node> = SVG.Element<SVG.FeDistantLight, Content>
public typealias fePointLight<Content: SVG.Node> = SVG.Element<SVG.FePointLight, Content>
public typealias feSpotLight<Content: SVG.Node> = SVG.Element<SVG.FeSpotLight, Content>

// MARK: - Text content child elements

public typealias textPath<Content: SVG.Node> = SVG.Element<SVG.TextPath, Content>
public typealias tspan<Content: SVG.Node> = SVG.Element<SVG.Tspan, Content>

// MARK: - Uncategorized elements

public typealias clipPath<Content: SVG.Node> = SVG.Element<SVG.ClipPath, Content>
public typealias filter<Content: SVG.Node> = SVG.Element<SVG.Filter, Content>
public typealias view<Content: SVG.Node> = SVG.Element<SVG.View, Content>
