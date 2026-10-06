# Getting More from Microsoft Word in Legal Practice

Handout and practice file for a CLE presented to the Utah Bankruptcy Lawyers Forum (October 6, 2026) by Nick Hafen, BYU Law.

**View the page:** https://nickhafen.github.io/word-for-lawyers/

## What's here

| File | Purpose |
|---|---|
| `index.qmd` | The page content, including presenter-only notes |
| `files/RocketDrop-Motion-DEMO.docx` | Practice file (a filed stay motion with exhibit slip pages added; individuals' street addresses replaced with fictional ones) |
| `_quarto.yml`, `_quarto-*.yml` | Quarto settings; the `presenter` profile adds the notes |
| `styles.css`, `page-tools.html`, `mac-spans.lua` | Page styling, click-to-copy, the Mac show/hide button |
| `qr.svg`, `qr-slide.png` | QR code linking to the page |

## Building

Requires [Quarto](https://quarto.org).

```bash
quarto render                      # attendee version → _output/attendee
quarto render --profile presenter  # presenter version → _output/presenter
```

Pushing to `main` rebuilds the attendee version and publishes it to GitHub Pages.
