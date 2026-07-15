//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
@testable import Markup

struct ConditionalNodeTests {

	@Test func streamFirst() async throws {
		let test = Conditional<Raw, Empty>.first(Fixtures.raw)
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.raw("test"),
		])
	}

	@Test func streamSecond() async throws {
		let test = Conditional<Empty, Text>.second(Fixtures.text)
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.text("test"),
		])
	}

	@Test func streamIfTrue() async throws {
		let test = Fixtures.generate(element: "A") {
			if true { Fixtures.text }
		}

		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.start("A"),
			.text("test"),
			.end("A"),
		])
	}

	@Test func streamIfFalse() async throws {
		let test = Fixtures.generate(element: "A") {
			if false { Fixtures.text }
		}

		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.start("A"),
			.end("A"),
		])
	}

	@Test func streamIfTrueElse() async throws {
		let test = Fixtures.generate(element: "A") {
			if true {
				Fixtures.text
			} else {
				Fixtures.raw
			}
		}

		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.start("A"),
			.text("test"),
			.end("A"),
		])
	}

	@Test func streamIfFalseElse() async throws {
		let test = Fixtures.generate(element: "A") {
			if false {
				Fixtures.text
			} else {
				Fixtures.raw
			}
		}

		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.start("A"),
			.raw("test"),
			.end("A"),
		])
	}
}
