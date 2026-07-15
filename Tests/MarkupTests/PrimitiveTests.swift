//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
@testable import Markup

struct ElementTests {

	@Test func buildSingleElement() async throws {
		let test = Fixtures.generate(element: "test")
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.start("test"),
			.end("test"),
		])
	}

	@Test func buildNestedElement() async throws {
		let test = Fixtures.generate(element: "test") {
			Fixtures.generate(element: "child")
		}
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.start("test"),
			.start("child"),
			.end("child"),
			.end("test"),
		])
	}
}
