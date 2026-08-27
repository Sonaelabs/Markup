//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension ARIA {

	/// A type representing the sort order.
	public enum Sort: String, Sendable {

		/// Specifies sorted in ascending order by this column.
		case ascending

		/// Specifies sorted in descending order by this column.
		case descending

		/// Specifies sorting algorithm other than ascending or descending has been applied.
		case other

		/// Specifies no defined sort applied to the column.
		case none
	}
}
