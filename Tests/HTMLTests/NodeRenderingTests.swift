//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
import HTML

struct NodeRenderingTests {

	@Test func renderComment() {
		#expect(Markup.Comment("").write() == #"<!--  -->"#)
		#expect(Markup.Comment("plain text").write() == #"<!-- plain text -->"#)
		#expect(Markup.Comment("a & b < c > d").write() == #"<!-- a & b < c > d -->"#)
		#expect(Markup.Comment("-").write() == #"<!-- - -->"#)
		#expect(Markup.Comment("--").write() == #"<!-- -- -->"#)
		#expect(Markup.Comment("-----").write() == #"<!-- ----- -->"#)
		#expect(Markup.Comment("a--b").write() == #"<!-- a--b -->"#)
		#expect(Markup.Comment("<!--").write() == #"<!-- <!-- -->"#)
		#expect(Markup.Comment("-->").write() == #"<!-- --> -->"#)
		#expect(Markup.Comment(">start").write() == #"<!-- >start -->"#)
		#expect(Markup.Comment("->start").write() == #"<!-- ->start -->"#)
		#expect(Markup.Comment("end<!-").write() == #"<!-- end<!- -->"#)
		#expect(Markup.Comment("--foo").write() == #"<!-- --foo -->"#)
		#expect(Markup.Comment(" already padded ").write() == #"<!--  already padded  -->"#)
		#expect(Markup.Comment("café — 日本語").write() == #"<!-- café — 日本語 -->"#)
	}

	@Test func renderRaw() {
		#expect(Raw(#""#).write() == #""#)
		#expect(Raw(#"   "#).write() == #"   "#)
		#expect(Raw(#"plain text"#).write() == #"plain text"#)
		#expect(Raw(#"&"#).write() == #"&"#)
		#expect(Raw(#"<"#).write() == #"<"#)
		#expect(Raw(#">"#).write() == #">"#)
		#expect(Raw(#"Tom & Jerry"#).write() == #"Tom & Jerry"#)
		#expect(Raw(#"Tom &amp; Jerry"#).write() == #"Tom &amp; Jerry"#)
		#expect(Raw(#"Tom &foo; Jerry"#).write() == #"Tom &foo; Jerry"#)
		#expect(Raw(#"5 &#60; 10"#).write() == #"5 &#60; 10"#)
		#expect(Raw(#"<script>alert(1)</script>"#).write() == #"<script>alert(1)</script>"#)
		#expect(Raw(#"<a href="x">link</a>"#).write() == #"<a href="x">link</a>"#)
		#expect(Raw(#"it's fine"#).write() == #"it's fine"#)
		#expect(Raw(#"<<<"#).write() == #"<<<"#)
		#expect(Raw(#">>>"#).write() == #">>>"#)
		#expect(Raw(#"&&&&&&&&&&"#).write() == #"&&&&&&&&&&"#)
		#expect(Raw(#"line1\nline2"#).write() == #"line1\nline2"#)
		#expect(Raw(#"café — 日本語 🎉"#).write() == #"café — 日本語 🎉"#)
		#expect(Raw(#"<div>café — 日本語</div>"#).write() == #"<div>café — 日本語</div>"#)
	}

	@Test func renderText() {
		#expect(Text(#""#).write() == #""#)
		#expect(Text(#"   "#).write() == #"   "#)
		#expect(Text(#"plain text"#).write() == #"plain text"#)
		#expect(Text(#"&"#).write() == #"&amp;"#)
		#expect(Text(#"<"#).write() == #"&lt;"#)
		#expect(Text(#">"#).write() == #"&gt;"#)
		#expect(Text(#"Tom & Jerry"#).write() == #"Tom &amp; Jerry"#)
		#expect(Text(#"Tom &amp; Jerry"#).write() == #"Tom &amp;amp; Jerry"#)
		#expect(Text(#"Tom &foo; Jerry"#).write() == #"Tom &amp;foo; Jerry"#)
		#expect(Text(#"5 &#60; 10"#).write() == #"5 &amp;#60; 10"#)
		#expect(Text(#"<script>alert(1)</script>"#).write() == #"&lt;script&gt;alert(1)&lt;/script&gt;"#)
		#expect(Text(#"<a href="x">link</a>"#).write() == #"&lt;a href="x"&gt;link&lt;/a&gt;"#)
		#expect(Text(#"it's fine"#).write() == #"it's fine"#)
		#expect(Text(#"<<<"#).write() == #"&lt;&lt;&lt;"#)
		#expect(Text(#">>>"#).write() == #"&gt;&gt;&gt;"#)
		#expect(Text(#"&&&&&&&&&&"#).write() == #"&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;&amp;"#)
		#expect(Text(#"line1\nline2"#).write() == #"line1\nline2"#)
		#expect(Text(#"café — 日本語 🎉"#).write() == #"café — 日本語 🎉"#)
		#expect(Text(#"<div>café — 日本語</div>"#).write() == #"&lt;div&gt;café — 日本語&lt;/div&gt;"#)
	}
}
