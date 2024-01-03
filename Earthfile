VERSION 0.7

lint:
  BUILD +lint-markdown
  BUILD +lint-editorconfig
  BUILD +lint-lychee

lint-markdown:
  FROM avtodev/markdown-lint:v1
  WORKDIR /work
  COPY .markdownlint.yaml README.md .
  RUN --entrypoint -- --config .markdownlint.yaml README.md

lint-editorconfig:
  FROM mstruebing/editorconfig-checker:2.7.2
  WORKDIR /work
  COPY . .
  RUN ec .

lint-lychee:
  FROM lycheeverse/lychee:0.13
  WORKDIR /work
  COPY . .
  RUN --entrypoint .
