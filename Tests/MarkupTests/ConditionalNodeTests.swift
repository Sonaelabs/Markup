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
		test.render(using: &recorder)

		#expect(recorder.events == [
			.raw("test"),
		])
	}

	@Test func streamSecond() async throws {
		let test = Conditional<Empty, Text>.second(Fixtures.text)

		var recorder = RecordingRenderer()
		test.render(using: &recorder)

		#expect(recorder.events == [
			.text("test"),
		])
	}

	@Test func streamIfTrue() async throws {
		let test = foo {
			if true { Fixtures.text }
		}

		var recorder = RecordingRenderer()
		test.render(using: &recorder)

		#expect(recorder.events == [
			.start("foo"),
			.text("test"),
			.end("foo"),
		])
	}

	@Test func streamIfFalse() async throws {
		let test = foo {
			if false { Fixtures.text }
		}

		var recorder = RecordingRenderer()
		test.render(using: &recorder)

		#expect(recorder.events == [
			.start("foo"),
			.end("foo"),
		])
	}

	@Test func streamIfTrueElse() async throws {
		let test = foo {
			if true {
				Fixtures.text
			} else {
				Fixtures.raw
			}
		}

		var recorder = RecordingRenderer()
		test.render(using: &recorder)

		#expect(recorder.events == [
			.start("foo"),
			.text("test"),
			.end("foo"),
		])
	}

	@Test func streamIfFalseElse() async throws {
		let test = foo {
			if false {
				Fixtures.text
			} else {
				Fixtures.raw
			}
		}

		var recorder = RecordingRenderer()
		test.render(using: &recorder)

		#expect(recorder.events == [
			.start("foo"),
			.raw("test"),
			.end("foo"),
		])
	}
}
