package main

import (
	"text/template"
	"tool/file"
)

command: "build": {
	getTemplate: file.Read & {
		contents: string
		filename: "README.md.tmpl"
	}

	executeTemplate: file.Create & {
		let t = getTemplate.contents

		filename: "README.md"
		contents: template.Execute(t, links)
	}
}
