//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
import SVG

struct IconRenderingTests {

	@Test func renderDashboardIcon() {
		let icon = svg(.class("icon"), .width(18), .height(18), .viewBox(0, 0, 24, 24), .fill(.none), .stroke(.currentColor), .stroke(width: 1.5)) {
			rect(.x(3), .y(3), .width(7), .height(7), .rx(1.5))
			rect(.x(14), .y(3), .width(7), .height(4), .rx(1.5))
			rect(.x(3), .y(14), .width(7), .height(7), .rx(1.5))
			rect(.x(14), .y(10), .width(7), .height(11), .rx(1.5))
		}

		#expect(icon.draw() == #"<svg class="icon" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><rect x="3" y="3" width="7" height="7" rx="1.5" /><rect x="14" y="3" width="7" height="4" rx="1.5" /><rect x="3" y="14" width="7" height="7" rx="1.5" /><rect x="14" y="10" width="7" height="11" rx="1.5" /></svg>"#)
	}

	@Test func renderMapIcon() {
		let icon = svg(.class("icon"), .width(18), .height(18), .viewBox(0, 0, 24, 24), .fill(.none), .stroke(.currentColor), .stroke(width: 1.5)) {
			polygon(.points("1 6 1 22 8 18 16 22 23 18 23 2 16 6 8 2 1 6"))
			line(.x1(8), .y1(2), .x2(8), .y2(18))
			line(.x1(16), .y1(6), .x2(16), .y2(22))
		}

		#expect(icon.draw() == #"<svg class="icon" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5"><polygon points="1 6 1 22 8 18 16 22 23 18 23 2 16 6 8 2 1 6" /><line x1="8" y1="2" x2="8" y2="18" /><line x1="16" y1="6" x2="16" y2="22" /></svg>"#)
	}

	<svg class="icon" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="1.5">
		<polygon points="1 6 1 22 8 18 16 22 23 18 23 2 16 6 8 2 1 6" />
		<line x1="8" y1="2" x2="8" y2="18" />
		<line x1="16" y1="6" x2="16" y2="22" />
	</svg>
}
