in := awesome-typst.typ
out := $(in:.typ=.pdf)

$(out): $(in) links.yaml links.cue
	typst compile $<

.PHONY: watch
watch: $(in) links.yaml
	typst watch $<

.PHONY: export
export: links.cue links.yaml

links.yaml: links.cue
	@cue export --out yaml > $@

.PHONY: clean
clean:
	rm -f $(out)
