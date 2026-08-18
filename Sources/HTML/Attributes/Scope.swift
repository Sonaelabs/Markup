//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

extension HTMLValue {

	/// The scope attribute specifies whether a header cell is a header for a row, column, row group, or column group.
	public enum Scope: String, Sendable {

		/// The header cell is a header for a row.
		case row

		/// The header cell is a header for a column.
		case col

		/// The header cell is a header for a group of rows.
		case rowgroup

		/// The header cell is a header for a group of columns.
		case colgroup
	}
}
