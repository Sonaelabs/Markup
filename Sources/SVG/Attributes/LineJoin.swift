//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension SVG {

	/// A type representing a line join.
	public enum LineJoin: String, Sendable {

		/// Specifies a `miter` join.
		case miter

		/// Specifies a `round` join.
		case round

		/// Specifies a `bevel` join.
		case bevel

		/// Specifies a `arcs` join.
		case arcs

		/// Specifies a `miter-clip` join.
		case miterClip
	}
}
