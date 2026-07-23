//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

import Testing
import HTML

struct TagRenderingTests {

	@Test func renderAllElements() {
		#expect(html {}.write() == "<html></html>")
		#expect(head {}.write() == "<head></head>")
		#expect(body {}.write() == "<body></body>")

		#expect(base().write() == "<base>")
		#expect(link().write() == "<link>")
		#expect(meta().write() == "<meta>")
		#expect(title {}.write() == "<title></title>")

		#expect(address {}.write() == "<address></address>")
		#expect(article {}.write() == "<article></article>")
		#expect(aside {}.write() == "<aside></aside>")
		#expect(footer {}.write() == "<footer></footer>")
		#expect(header {}.write() == "<header></header>")

		#expect(h1 {}.write() == "<h1></h1>")
		#expect(h2 {}.write() == "<h2></h2>")
		#expect(h3 {}.write() == "<h3></h3>")
		#expect(h4 {}.write() == "<h4></h4>")
		#expect(h5 {}.write() == "<h5></h5>")
		#expect(h6 {}.write() == "<h6></h6>")

		#expect(hgroup {}.write() == "<hgroup></hgroup>")
		#expect(main {}.write() == "<main></main>")
		#expect(nav {}.write() == "<nav></nav>")
		#expect(search {}.write() == "<search></search>")
		#expect(section {}.write() == "<section></section>")

		#expect(blockquote {}.write() == "<blockquote></blockquote>")
		#expect(dd {}.write() == "<dd></dd>")
		#expect(div {}.write() == "<div></div>")
		#expect(dl {}.write() == "<dl></dl>")
		#expect(dt {}.write() == "<dt></dt>")
		#expect(figcaption {}.write() == "<figcaption></figcaption>")
		#expect(figure {}.write() == "<figure></figure>")
		#expect(hr().write() == "<hr>")
		#expect(li {}.write() == "<li></li>")
		#expect(menu {}.write() == "<menu></menu>")
		#expect(ol {}.write() == "<ol></ol>")
		#expect(p {}.write() == "<p></p>")
		#expect(pre {}.write() == "<pre></pre>")
		#expect(ul {}.write() == "<ul></ul>")

		#expect(a {}.write() == "<a></a>")
		#expect(abbr {}.write() == "<abbr></abbr>")
		#expect(b {}.write() == "<b></b>")
		#expect(bdi {}.write() == "<bdi></bdi>")
		#expect(bdo {}.write() == "<bdo></bdo>")
		#expect(br().write() == "<br>")
		#expect(cite {}.write() == "<cite></cite>")
		#expect(code {}.write() == "<code></code>")
		#expect(data {}.write() == "<data></data>")
		#expect(dfn {}.write() == "<dfn></dfn>")
		#expect(em {}.write() == "<em></em>")
		#expect(i {}.write() == "<i></i>")
		#expect(kbd {}.write() == "<kbd></kbd>")
		#expect(mark {}.write() == "<mark></mark>")
		#expect(q {}.write() == "<q></q>")
		#expect(rp {}.write() == "<rp></rp>")
		#expect(rt {}.write() == "<rt></rt>")
		#expect(ruby {}.write() == "<ruby></ruby>")
		#expect(s {}.write() == "<s></s>")
		#expect(samp {}.write() == "<samp></samp>")
		#expect(small {}.write() == "<small></small>")
		#expect(span {}.write() == "<span></span>")
		#expect(strong {}.write() == "<strong></strong>")
		#expect(sub {}.write() == "<sub></sub>")
		#expect(sup {}.write() == "<sup></sup>")
		#expect(time {}.write() == "<time></time>")
		#expect(u {}.write() == "<u></u>")
		#expect(`var` {}.write() == "<var></var>")
		#expect(wbr().write() == "<wbr>")

		#expect(area().write() == "<area>")
		#expect(audio {}.write() == "<audio></audio>")
		#expect(img().write() == "<img>")
		#expect(map {}.write() == "<map></map>")
		#expect(track().write() == "<track>")
		#expect(video {}.write() == "<video></video>")

		#expect(embed().write() == "<embed>")
		#expect(iframe {}.write() == "<iframe></iframe>")
		#expect(picture {}.write() == "<picture></picture>")
		#expect(object {}.write() == "<object></object>")
		#expect(source().write() == "<source>")

		#expect(canvas {}.write() == "<canvas></canvas>")
		#expect(noscript {}.write() == "<noscript></noscript>")
		#expect(script().write() == "<script></script>")

		#expect(del {}.write() == "<del></del>")
		#expect(ins {}.write() == "<ins></ins>")

		#expect(caption {}.write() == "<caption></caption>")
		#expect(colgroup {}.write() == "<colgroup></colgroup>")
		#expect(col().write() == "<col>")

		#expect(table {}.write() == "<table></table>")
		#expect(thead {}.write() == "<thead></thead>")
		#expect(tbody {}.write() == "<tbody></tbody>")
		#expect(tfoot {}.write() == "<tfoot></tfoot>")

		#expect(td {}.write() == "<td></td>")
		#expect(th {}.write() == "<th></th>")
		#expect(tr {}.write() == "<tr></tr>")

		#expect(button {}.write() == "<button></button>")
		#expect(datalist {}.write() == "<datalist></datalist>")
		#expect(fieldset {}.write() == "<fieldset></fieldset>")
		#expect(form {}.write() == "<form></form>")
		#expect(input().write() == "<input>")
		#expect(label {}.write() == "<label></label>")
		#expect(legend {}.write() == "<legend></legend>")
		#expect(meter {}.write() == "<meter></meter>")
		#expect(optgroup {}.write() == "<optgroup></optgroup>")
		#expect(option {}.write() == "<option></option>")
		#expect(output {}.write() == "<output></output>")
		#expect(progress {}.write() == "<progress></progress>")
		#expect(select {}.write() == "<select></select>")
		#expect(textarea {}.write() == "<textarea></textarea>")

		#expect(details {}.write() == "<details></details>")
		#expect(dialog {}.write() == "<dialog></dialog>")
		#expect(summary {}.write() == "<summary></summary>")

		#expect(slot {}.write() == "<slot></slot>")
		#expect(template {}.write() == "<template></template>")
	}

	@Test func renderNestedElement() {
		let test = div { p {} }
		let result = test.write()
		#expect(result == "<div><p></p></div>")
	}

	@Test func renderFragment() {
		let test = div {
			h1 {}
			p {}
		}

		let result = test.write()
		#expect(result == "<div><h1></h1><p></p></div>")
	}

	@Test func renderOptional() {
		do {
			let test = div {
				if true {
					p {}
				}
			}
			
			let result = test.write()
			#expect(result == "<div><p></p></div>")
		}

		do {
			let test = div {
				if false {
					p {}
				}
			}

			let result = test.write()
			#expect(result == "<div></div>")
		}
	}

	@Test func renderConditional() {
		do {
			let test = div {
				if true {
					p {}
				} else {
					span {}
				}
			}

			let result = test.write()
			#expect(result == "<div><p></p></div>")
		}

		do {
			let test = div {
				if false {
					p {}
				} else {
					span {}
				}
			}

			let result = test.write()
			#expect(result == "<div><span></span></div>")
		}
	}

	@Test func renderForInLoop() {
		let test = div {
			for _ in 0..<3 {
				p {}
			}
		}

		let result = test.write()
		#expect(result == "<div><p></p><p></p><p></p></div>")
	}
}
