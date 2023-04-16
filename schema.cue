package main

#Link: {
	name:        string
	url:         =~"^http(s)?"
	description: string
}

#Section: [...#Link]
#SubSection: [...#Link]

links: [string]: [...#Link] | {[string]: [...#Link]}
