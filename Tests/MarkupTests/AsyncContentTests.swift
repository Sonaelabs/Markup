//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
@testable import Markup

struct AsyncContentTests {

	@Test func buildSingleComment() async throws {
		let test = AsyncContent { Fixtures.comment }
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.flush(force: false),
			.comment("test"),
			.flush(force: false),
		])
	}

	@Test func buildSingleElement() async throws {
		let test = AsyncContent { Fixtures.singleElement }
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.flush(force: false),
			.start("bar"),
			.end("bar"),
			.flush(force: false),
		])
	}

	@Test func buildNestedElement() async throws {
		let test = AsyncContent { Fixtures.nestedElement }
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.flush(force: false),
			.start("foo"),
			.start("bar"),
			.end("bar"),
			.end("foo"),
			.flush(force: false),
		])
	}

	@Test func buildFragment() async throws {
		let test = AsyncContent { Fixtures.fragment }
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.flush(force: false),
			.start("foo"),
			.start("bar"),
			.end("bar"),
			.start("baz"),
			.end("foo"),
			.flush(force: false),
		])
	}

	@Test func buildRaw() async throws {
		let test = AsyncContent { Fixtures.raw }
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.flush(force: false),
			.raw("test"),
			.flush(force: false),
		])
	}

	@Test func buildText() async throws {
		let test = AsyncContent { Fixtures.text }
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.flush(force: false),
			.text("test"),
			.flush(force: false),
		])
	}

	@Test func buildAwaitingSlowWork() async throws {
		let test = AsyncContent {
			try await Task.sleep(for: .milliseconds(500))
			return Fixtures.text
		}
		var recorder = RecordingRenderer()
		
		try await test.stream(using: &recorder)
		
		#expect(recorder.events == [
			.flush(force: false),
			.text("test"),
			.flush(force: false),
		])
	}

	@Test func buildThrowsError() async throws {
		let test = AsyncContent { throw TestError.asyncContent }
		var recorder = RecordingRenderer()

		let error = await #expect(throws: TestError.self) {
			try await test.stream(using: &recorder)
		}

		#expect(error == .asyncContent)

		#expect(recorder.events == [
			.flush(force: false),
		])
	}
}
