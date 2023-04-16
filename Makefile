main.pdf: main.typ
	typst compile $<

.PHONY: watch
watch: main.typ
	typst watch $<

links.yaml: links.cue
	@cue export --out yaml > $@
