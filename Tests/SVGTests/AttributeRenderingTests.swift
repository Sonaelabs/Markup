//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
import SVG

struct AttributeRenderingTests {

	@Test func renderRectAttributes() {
		#expect(rect(.x(1), .y(2), .width(3), .height(4)).draw() == #"<rect x="1" y="2" width="3" height="4" />"#)
		#expect(rect(.x(1), .y(2), .width(30%), .height(4, .cm)).draw() == #"<rect x="1" y="2" width="30%" height="4cm" />"#)
	}
}
