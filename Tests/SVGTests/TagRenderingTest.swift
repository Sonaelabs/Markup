//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
import SVG

struct TagRenderingTests {

	@Test func renderAllElements() {
		#expect(svg {}.draw() == "<svg />")

		#expect(animate {}.draw() == "<animate />")
		#expect(animateMotion {}.draw() == "<animateMotion />")
		#expect(animateTransform {}.draw() == "<animateTransform />")
		#expect(mpath {}.draw() == "<mpath />")
		#expect(`set` {}.draw() == "<set />")

		#expect(circle {}.draw() == "<circle />")
		#expect(ellipse {}.draw() == "<ellipse />")
		#expect(line {}.draw() == "<line />")
		#expect(polygon {}.draw() == "<polygon />")
		#expect(polyline {}.draw() == "<polyline />")
		#expect(rect {}.draw() == "<rect />")

		#expect(a {}.draw() == "<a />")
		#expect(defs {}.draw() == "<defs />")
		#expect(g {}.draw() == "<g />")
		#expect(marker {}.draw() == "<marker />")
		#expect(mask {}.draw() == "<mask />")
		#expect(pattern {}.draw() == "<pattern />")
		#expect(`switch` {}.draw() == "<switch />")
		#expect(symbol {}.draw() == "<symbol />")

		#expect(desc {}.draw() == "<desc />")
		#expect(metadata {}.draw() == "<metadata />")
		#expect(title {}.draw() == "<title />")

		#expect(feBlend {}.draw() == "<feBlend />")
		#expect(feColorMatrix {}.draw() == "<feColorMatrix />")
		#expect(feComponentTransfer {}.draw() == "<feComponentTransfer />")
		#expect(feComposite {}.draw() == "<feComposite />")
		#expect(feConvolveMatrix {}.draw() == "<feConvolveMatrix />")
		#expect(feDiffuseLighting {}.draw() == "<feDiffuseLighting />")
		#expect(feDisplacementMap {}.draw() == "<feDisplacementMap />")
		#expect(feDropShadow {}.draw() == "<feDropShadow />")
		#expect(feFlood {}.draw() == "<feFlood />")
		#expect(feFuncA {}.draw() == "<feFuncA />")
		#expect(feFuncB {}.draw() == "<feFuncB />")
		#expect(feFuncG {}.draw() == "<feFuncG />")
		#expect(feFuncR {}.draw() == "<feFuncR />")
		#expect(feGaussianBlur {}.draw() == "<feGaussianBlur />")
		#expect(feImage {}.draw() == "<feImage />")
		#expect(feMerge {}.draw() == "<feMerge />")
		#expect(feMergeNode {}.draw() == "<feMergeNode />")
		#expect(feMorphology {}.draw() == "<feMorphology />")
		#expect(feOffset {}.draw() == "<feOffset />")
		#expect(feSpecularLighting {}.draw() == "<feSpecularLighting />")
		#expect(feTile {}.draw() == "<feTile />")
		#expect(feTurbulence {}.draw() == "<feTurbulence />")

		#expect(linearGradient {}.draw() == "<linearGradient />")
		#expect(radialGradient {}.draw() == "<radialGradient />")
		#expect(stop {}.draw() == "<stop />")

		#expect(image {}.draw() == "<image />")
		#expect(path {}.draw() == "<path />")
		#expect(text {}.draw() == "<text />")
		#expect(use {}.draw() == "<use />")

		#expect(feDistantLight {}.draw() == "<feDistantLight />")
		#expect(fePointLight {}.draw() == "<fePointLight />")
		#expect(feSpotLight {}.draw() == "<feSpotLight />")

		#expect(textPath {}.draw() == "<textPath />")
		#expect(tspan {}.draw() == "<tspan />")

		#expect(clipPath {}.draw() == "<clipPath />")
		#expect(filter {}.draw() == "<filter />")
		#expect(view {}.draw() == "<view />")
	}
}
