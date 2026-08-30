//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
@testable import Markup

struct EmptyNodeTests {

	@Test func streamEmptyReturnsNothing() async throws {
		let test = Empty()
		var recorder = RecordingRenderer()

		test.render(using: &recorder)

		#expect(recorder.events.isEmpty)
	}

//	@Test func streamElementWithEmptyContent() async throws {
//		var recorder = RecordingRenderer()
//
//		Fixtures.singleElement.render(using: &recorder)
//
//		#expect(recorder.events == [
//			.start("bar"),
//			.end("bar"),
//		])
//	}
}
