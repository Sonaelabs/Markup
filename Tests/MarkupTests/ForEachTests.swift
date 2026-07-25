//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
@testable import Markup

struct ForEachTests {

	@Test func buildEmpty() async throws {
		let test = ForEach([String](), build: Text.init)
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events.isEmpty)
	}

	@Test func buildSingleItem() async throws {
		let test = ForEach(["single"], build: Text.init)
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.text("single"),
			.flush(force: false),
		])
	}

	@Test func buildMultiItem() async throws {
		let test = ForEach(["X", "Y", "Z"], build: Text.init)
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.text("X"),
			.flush(force: false),
			.text("Y"),
			.flush(force: false),
			.text("Z"),
			.flush(force: false),
		])
	}
}
