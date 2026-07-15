//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
@testable import Markup

struct AsyncForEachTests {

	@Test func buildEmpty() async throws {
		let stream = AsyncStream(testData: [String]())
		let test = AsyncForEach(stream, build: Fixtures.generate)
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)
		
		#expect(recorder.events.isEmpty)
	}

	@Test func buildSingleItem() async throws {
		let stream = AsyncStream(testData: ["single"])
		let test = AsyncForEach(stream, build: Fixtures.generate)
		var recorder = RecordingRenderer()

		try await test.stream(using: &recorder)

		#expect(recorder.events == [
			.start("single"),
			.end("single"),
			.flush(force: false),
		])
	}

	@Test func buildMultiItem() async throws {
		let stream = AsyncStream(testData: ["X", "Y", "Z"])
		let test = AsyncForEach(stream, build: Fixtures.generate)
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

	@Test func buildThrowsError() async throws {
		let stream = AsyncThrowingStream<String, any Error> { continuation in
			continuation.finish(throwing: TestError.asyncForEach)
		}

		let test = AsyncForEach(stream, build: Fixtures.generate)
		var recorder = RecordingRenderer()

		let error = await #expect(throws: TestError.self) {
			try await test.stream(using: &recorder)
		}

		#expect(recorder.events.isEmpty)
		#expect(error == .asyncForEach)
	}
}

private extension AsyncStream where Element: Sendable {
	init(testData: [Element]) {
		self.init { continuation in
			for element in testData {
				continuation.yield(element)
			}
			continuation.finish()
		}
	}
}
