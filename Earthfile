VERSION 0.7

lint:
    BUILD +lint-markdown
    BUILD +lint-editorconfig
    BUILD +lint-lychee

lint-markdown:
    FROM avtodev/markdown-lint:v1
    WORKDIR /work
    COPY .markdownlint.yaml *.md .
    RUN markdownlint --config .markdownlint.yaml *.md

lint-editorconfig:
    FROM mstruebing/editorconfig-checker:2.7.2
    WORKDIR /work
    COPY . .
    RUN ec .

lint-lychee:
    FROM lycheeverse/lychee:0.13
    WORKDIR /work
    COPY . .
    RUN --secret GITHUB_TOKEN lychee -o report.md -f markdown .
    SAVE ARTIFACT report.md
