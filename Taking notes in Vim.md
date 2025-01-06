[Vim](Vim.md)

Vim is a great platform for taking notes. However, some constraints are necessary to maximize efficiency for real-time thought-capture.

## Vimwiki plugin

After some experimentation, I have decided to make use of [Vimwiki](https://github.com/vimwiki). It extends Vim's notetaking capability in many significant ways. Most importantly, it reduces the mental overhead of note composition. Some key features of Vimwiki include:

- Excellent internal link navigation
- Automatic not creation from links
- Automatic global link updates upon file rename

## Publishing notes with MDwiki

I am currently using [MDwiki](https://dynalon.github.io/mdwiki/) to publish my notes to [rogerfarrell.net](https://rogerfarrell.net), mainly for mobile reference.

## Markdown syntax

Markdown is the de facto standard for note-taking, it lacks a single definitive spec. Since Pandoc is the best tool for Markdown conversion, I will be following the [Pandoc Markdown spec](https://pandoc.org/MANUAL.html#pandocs-markdown). If a fallback is required for further clarity, I will use [Github Flavored Markdown](https://github.github.com/gfm).

## Links instead of tags

The zettelkasten method prefers currated entry points to notes over content searches. In the spirit of this convention, I have elected to forgo querying by tags. Navigation will be handled entirely by links. This has the added benefit of being fully supported by base Markdown syntax.
