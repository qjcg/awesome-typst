# AGENTS.md - Guide for AI Agents

This is the **awesome-typst** project: a curated collection of useful links for [Typst](https://github.com/typst/typst) users.

## Project Overview

- **Type**: Awesome list / documentation repository
- **Content**: Markdown files with curated links for Typst users
- **Languages**: English (README.md), Chinese (README_ZH.md)
- **Build System**: Go 1.26.1 with Taskfile (no application binary to build)

## Essential Commands

### Linting & Validation

```bash
# Run all linters (default task)
task lint

# Run editorconfig checker only
task lint:editorconfig

# Check for broken links
task lint:links

# Run pre-commit checks (via lefthook)
go tool lefthook run pre-commit --all-files

# Run pre-push checks (via lefthook)
go tool lefthook run pre-push --all-files
```

### CI Pipeline

GitHub Actions runs on PRs and scheduled (daily at 18:00 UTC):
1. Pre-commit checks (fast): editorconfig validation
2. Pre-push checks (slower): broken link detection

## Code Organization

```
awesome-typst/
├── README.md          # Main content (English)
├── README_ZH.md       # Chinese translation
├── Taskfile.yml       # Build tasks
├── .lefthook.yml      # Git hooks configuration
├── .editorconfig      # Code style rules
└── .github/workflows/linters.yml  # CI configuration
```

## Content Structure

The README follows the standard "awesome" list format with these sections:
- Official Project Links
- Typst Community Links
- Integrations & Tools (browser extensions, chatbots, CI/CD, CLI tools, editors, etc.)
- Templates & Libraries (assignments, CV, posters, STEM, etc.)

Links are organized alphabetically within each subsection.

## Style & Conventions

### Markdown Formatting
- **Indent**: 2 spaces
- **Charset**: UTF-8
- **Trailing whitespace**: Trimmed
- **Final newline**: Inserted
- Use descriptive link text (not "here" or "link")
- Include platform/specification notes in parentheses, e.g., `(FireFox)`, `(VS Code)`

### Link Requirements
- Links must be functional (no broken links)
- Excluded from link checking: instagram, linkedin, twitter, marketplace.visualstudio.com
- Permanent redirects should be updated in source

## Testing Approach

1. **Pre-commit**: EditorConfig validation ensures consistent formatting
2. **Pre-push**: Link validation catches broken URLs
3. **CI**: Runs both checks on all PRs and daily on main branch

Run local validation before submitting PRs:
```bash
go tool lefthook run pre-commit --all-files
go tool lefthook run pre-push --all-files
```

## Contribution Guidelines

PRs should:
- Add valuable resources for Typst users
- Focus on a single suggestion
- Include a link to the repository in the PR body

## Gotchas

- **Go tooling is for linting only** - there is no application binary to build or run
- **Link checking excludes social media** - twitter, instagram, linkedin links won't be validated
- **xurls -fix updates URLs in-place** - be careful when running the link fixer
- **Markdown files must end with newline** - editorconfig enforces this
- **Taskfile uses go tool** - requires Go to be installed with the tool dependencies from go.mod
