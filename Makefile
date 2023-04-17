in := awesome-typst.typ
out := $(in:.typ=.pdf)
in_data := links.cue
out_data := $(in_data:.cue=.yaml)

$(out): $(in) $(in_data) $(out_data)
	typst compile $<

.PHONY: readme
readme: README.md README.md.tmpl

README.md: README.md.tmpl
	cue build

.PHONY: watch
watch: $(in) $(out_data)
	typst watch $<

.PHONY: export
export: $(in_data) $(out_data)

$(out_data): $(in_data)
	@cue export --out yaml > $@

.PHONY: clean
clean:
	rm -f $(out) $(out_data)
