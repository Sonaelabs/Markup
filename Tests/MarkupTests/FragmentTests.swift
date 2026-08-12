//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
@testable import Markup

struct FragmentTests {

	@Test func buildEmpty() async throws {
		let test = Fragment()

		var recorder = RecordingRenderer()
		test.render(using: &recorder)

		#expect(recorder.events.isEmpty)
	}

	@Test func buildSingleChild() async throws {
		let test = Fragment(
			Fixtures.text,
		)

		var recorder = RecordingRenderer()
		test.render(using: &recorder)

		#expect(recorder.events == [
			.text("test"),
		])
	}

	@Test func buildDoubleChild() async throws {
		let test = Fragment(
			Fixtures.text,
			Fixtures.raw,
		)

		var recorder = RecordingRenderer()
		test.render(using: &recorder)

		#expect(recorder.events == [
			.text("test"),
			.raw("test"),
		])
	}

	@Test func buildMultiChild() async throws {
		let test = Fragment(
			Fixtures.text,
			Fixtures.raw,
			Fixtures.text,
			Fixtures.raw,
			Fixtures.text,
			Fixtures.raw,
			Fixtures.singleElement,
			Fixtures.text,
			Fixtures.raw,
			Fixtures.text,
			Fixtures.raw,
			Fixtures.text,
			Fixtures.raw,
		)
		
		var recorder = RecordingRenderer()
		test.render(using: &recorder)

		#expect(recorder.events == [
			.text("test"),
			.raw("test"),
			.text("test"),
			.raw("test"),
			.text("test"),
			.raw("test"),
			.start("bar"),
			.end("bar"),
			.text("test"),
			.raw("test"),
			.text("test"),
			.raw("test"),
			.text("test"),
			.raw("test"),
		])
	}
}
