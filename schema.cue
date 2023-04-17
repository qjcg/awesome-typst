package main

#Link: {
	name:        string
	url:         =~"^http(s)?"
	description: string
}

#Section: [string]: [...#Link] | [...#Section]

links: [...#Section]
