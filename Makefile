main.pdf: main.typ links.yaml
	typst compile $<

.PHONY: watch
watch: main.typ links.yaml
	typst watch $<

.PHONY: export
export: links.cue links.yaml

links.yaml: links.cue
	@cue export --out yaml > $@
