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

		try await test.stream(using: &recorder)

		#expect(recorder.events.isEmpty)
	}

	@Test func streamElementWithEmptyContent() async throws {
		let test = Fixtures.generate(element: "test")
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.start("test"),
			.end("test"),
		])
	}
}
