//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

@testable import Markup

enum TestError: Error, Equatable {
	case asyncContent
	case asyncForEach
}

struct RecordingRenderer: StreamRenderer {

	enum Event: Equatable {
		case comment(String)
		case raw(String)
		case text(String)
		case start(String)
		case end(String)
		case flush(force: Bool)
	}

	var events: [Event] = []

	mutating func append(comment: consuming StaticString) {
		events.append(.comment("\(comment)"))
	}

	mutating func append(raw: consuming String) {
		events.append(.raw(raw))
	}

	mutating func append(text: consuming String) {
		events.append(.text(text))
	}

	mutating func append<Tag>(start name: consuming String, attributes: consuming [Attribute<Tag>]) {
		events.append(.start(name))
	}

	mutating func append(end name: consuming String) {
		events.append(.end(name))
	}

	mutating func flushIfNeeded(force: Bool) async throws {
		events.append(.flush(force: force))
	}
}
