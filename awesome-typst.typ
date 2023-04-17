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

#for section in yaml(inputYAML).links [

	#for (title, items) in section [

		= #title

		#if "url" in items.at(0).keys() [

			// TODO: Choose one of (list, table) to stick with and remove the other.

			#for i in items [
				+ #link(i.url, i.name)
				  - #i.description
			]

			#line(length: 100%)

			#table(
				columns: 3,
				stroke: none,
				[*Link*], [*Description*], [*Notes*],

				..(for i in items {
					( [#link(i.url, i.name)], i.description, "", )
				})
			)

			#pagebreak()
		] else [
			#let sections = items

			#for s in sections [
				#for (title, items) in s [

					== #title

					#for i in items [
						+ #link(i.url, i.name)
						  - #i.description
					]
				]
			]
		]
	]
]
