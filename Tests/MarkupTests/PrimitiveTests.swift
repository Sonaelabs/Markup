//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
@testable import Markup

struct ElementTests {

	@Test func buildSingleElement() async throws {
		var recorder = RecordingRenderer()

		Fixtures.singleElement.render(using: &recorder)

		#expect(recorder.events == [
			.start("bar"),
			.end("bar"),
		])
	}

	@Test func buildNestedElement() async throws {
		var recorder = RecordingRenderer()

		Fixtures.nestedElement.render(using: &recorder)

		#expect(recorder.events == [
			.start("foo"),
			.start("bar"),
			.end("bar"),
			.end("foo"),
		])
	}
}
