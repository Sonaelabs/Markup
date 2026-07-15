//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
@testable import Markup

struct ForEachTests {

	@Test func buildEmpty() async throws {
		let test = ForEach([String](), build: Fixtures.generate)
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events.isEmpty)
	}

	@Test func buildSingleItem() async throws {
		let test = ForEach(["single"], build: Fixtures.generate)
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.start("single"),
			.end("single"),
			.flush(force: false),
		])
	}

	@Test func buildMultiItem() async throws {
		let test = ForEach(["X", "Y", "Z"], build: Fixtures.generate)
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.start("X"),
			.end("X"),
			.flush(force: false),
			.start("Y"),
			.end("Y"),
			.flush(force: false),
			.start("Z"),
			.end("Z"),
			.flush(force: false),
		])
	}
}
