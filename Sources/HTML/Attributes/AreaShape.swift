//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// Specifies the shape of each area in the image map.
public enum AreaShape: String, Sendable {

	/// Specifies the entire region.
	case `default`

	/// Defines a rectangular region.
	case rect

	/// Defines a circular region.
	case circle

	/// Defines a polygonal region.
	case poly
}
