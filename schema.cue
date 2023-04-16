package main

#Link: {
	name:        string
	url:         =~"^http(s)?"
	description: string
}

[string]: [...#Link]
