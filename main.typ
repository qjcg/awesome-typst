#set document(
 title: "Awesome Typst",
)

#set page(
 paper: "us-letter",
)

#set text(
 font: "Mona Sans",
 size: 12pt,
)

#show link: it => [
	#set text(blue)
	#underline(it)
]

#let coverPage(title) = {
 set page(fill: navy)
 set align(center)
 v(20%)
 text(title, 50pt, white)
}

#coverPage[*Awesome Typst*]

#pagebreak()

#outline()

#pagebreak()

= Integrations & Tools

#for (name, url, description) in yaml("links.yaml") [
	+ #link(url, name): #description
]


= Templates & Libraries
