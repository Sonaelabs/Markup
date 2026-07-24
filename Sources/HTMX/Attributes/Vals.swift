//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

public struct Vals: ExpressibleByDictionaryLiteral, Sendable {

	public var rawValue: String = ""

	@inlinable public init(dictionaryLiteral elements: (String, String)...) {
		let pairs = elements.map { "\"\($0.0)\": \"\($0.1)\"" }
		let joined = pairs.joined(separator: ", ")

		rawValue.append("{")
		rawValue.append(joined)
		rawValue.append("}")
	}
}
