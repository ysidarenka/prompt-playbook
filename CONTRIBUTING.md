# Contributing

## Adding a prompt

1. Pick the folder that matches the **purpose** of the prompt, not where you found it.
2. Copy `_templates/prompt-template.md` to `<folder>/<short-kebab-name>.md`.
3. Fill in the front matter and every section. "Example run" and "Variations" are optional.
4. Add a row to the index table in `README.md`.

## Rules of thumb

- **One prompt per file.** Variations of the same prompt go in its "Variations" section.
- **Use `[UPPERCASE_PLACEHOLDERS]`** for anything the reader must fill in.
- **Explain why it works.** A prompt without the reasoning behind it is hard to adapt.
- **Record what you tested it with** (`tested_with`), since behavior differs between models.
- **Credit the source.** Name the author and link the original.
- **Don't copy copyrighted text.** For books and paid courses, write the prompt in your own words, keep any quote short, and link to the source. Put personal study notes with longer excerpts in `private/`, which is git-ignored.

## Versions and releases

Every push to `main` runs [`.github/workflows/release.yml`](.github/workflows/release.yml). It creates a semantic version tag (`v1.0.0`, `v1.1.0`, ...) and a GitHub Release. The release body and the annotated tag message hold the same notes: prompts added, updated, and removed (with titles and links) plus the commits, grouped by type.

The first release is `v1.0.0`. After that, the version goes up based on what changed:

| Change | Bump | Example |
|---|---|---|
| A prompt file removed, or a commit marked breaking (`feat!:` or `BREAKING CHANGE:` in the body) | **major** | 1.4.2 → 2.0.0 |
| A new prompt file, or a `feat:` commit | **minor** | 1.4.2 → 1.5.0 |
| Anything else (edits, `fix:`, `docs:`, `chore:`) | **patch** | 1.4.2 → 1.4.3 |

Commit message conventions ([Conventional Commits](https://www.conventionalcommits.org/)):

```text
feat: add Feynman explain-back prompt
fix: correct placeholder in Challenger prompt
docs: expand CRIT background
chore: update release workflow
```

Commit messages are optional for versioning. Adding a prompt file triggers a minor bump even with a plain message like "Add Feynman prompt". They do make the notes easier to read.

- **Skip a release:** put `[skip release]` in the commit message.
- **Force a bump:** go to **Actions → Release → Run workflow** and pick `patch`, `minor`, or `major`.
- **See what's in a version:** open the release on GitHub, or run `git tag -n99 v1.0.0` locally after `git fetch --tags`.

## Naming

- Files: `kebab-case.md` (e.g. `second-order-risk-review.md`)
- Tags: lowercase, hyphenated (e.g. `problem-solving`, `stakeholder-management`)
