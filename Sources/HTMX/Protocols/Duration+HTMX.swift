//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension Duration {

	/// Formats duration as a CSS `<time>` value.
	@usableFromInline var cssTime: String {
		let (seconds, attoseconds) = components

		return if attoseconds == 0 {
			"\(seconds)s"
		} else {
			"\(seconds * 1000 + attoseconds / 1_000_000_000_000_000)ms"
		}
	}
}
