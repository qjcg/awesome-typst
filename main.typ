#let inputYAML = "links.yaml"

#set document(
 title: "Awesome Typst",
)

#set page(
 paper: "us-letter",
 numbering: "1",
)

#set text(
 font: "ETBembo",
 size: 16pt,
)

#show link: it => [
	#set text(blue)
	#it
]

#let coverPage(title) = {
 set text(font: "ETBembo")
 set page(fill: maroon, numbering: none)
 set align(center)
 v(20%)
 text(title, 60pt, white)
}

#coverPage[*Awesome \ Typst*]

#pagebreak()

#outline()

#pagebreak()

#for (section, content) in yaml(inputYAML) [
	= #section

	#if type(content) == "dictionary" [
		#for (subsection, items) in content [

			== #subsection

			#for i in items [
				+ #link(i.url, i.name)
				  - #i.description
			]
		]
	] else if type(content) == "array" [

		#let items = content

	// TODO: Choose one of (list, table) to stick with and remove the other.

		#for i in items [
			+ #link(i.url, i.name)
			  - #i.description
		]

		#line(length: 80%)

		#table(
			columns: 3,
			stroke: none,
			[*Link*], [*Description*], [*Notes*],

			..(for i in items {
				( [#link(i.url, i.name)], i.description, "", )
			})
		)

		#pagebreak()
	]
]
