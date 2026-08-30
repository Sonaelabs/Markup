//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension SVG {

	public enum Length: String, Sendable {

		/// Specifies an absolute unit in `pixel`.
		case px

		/// Specifies an absolute unit in `point`.
		case pt

		/// Specifies an absolute unit in `pica`.
		case pc

		/// Specifies an absolute unit in `inches`.
		case `in`

		/// Specifies an absolute unit in `centimeter`.
		case cm

		/// Specifies an absolute unit in `millimeter`.
		case mm

		/// Specifies an absolute unit in `quarter-millimeter`.
		case Q

		/// Specifies a relative unit in `M` width.
		case em

		/// Specifies a relative unit in `x` height.
		case ex

		/// Specifies a relative unit in `character`.
		case ch

		/// Specifies a relative unit in `cap` height.
		case cap

		/// Specifies a relative unit in `root M` width.
		case rem

		/// Specifies a viewport unit in `viewport width`.
		case vw

		/// Specifies a viewport unit in `viewport height`.
		case vh

		/// Specifies a viewport unit in `viewport minimum`.
		case vmin

		/// Specifies a viewport unit in `viewport maximum`.
		case vmax
	}
}
