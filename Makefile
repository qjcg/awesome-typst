in_typst := awesome-typst.typ
in_cue := links.cue
in_readme := README.md.tmpl

out_pdf := $(in_typst:.typ=.pdf)
out_yaml := $(in_cue:.cue=.yaml)
out_readme := $(basename $(in_readme))


.PHONY: all
all: $(out_readme) $(out_pdf) $(out_yaml)


# PDF

.PHONY: pdf
pdf: $(out_pdf)

$(out_pdf): $(in_typst) $(out_yaml)
	typst compile $<

.PHONY: watch
watch:
	typst watch $<


# README

.PHONY: readme
readme: $(out_readme)

$(out_readme): $(in_readme) $(out_yaml)
	cue build


# YAML

.PHONY: yaml
yaml: $(out_yaml)

$(out_yaml): $(in_cue)
	cue export --out yaml > $@

.PHONY: clean
clean:
	rm -f $(out_pdf) $(out_readme) $(out_yaml)
