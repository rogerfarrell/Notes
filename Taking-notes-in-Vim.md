[[vim]]

# Taking notes in Vim

Vim is a great platform for taking notes. However, some constraints are necessary to maximize efficiency for real-time thought-capture.

**This note is a work in progress. It may be out-of-date or have incomplete information.**

## Leads to explore

- [x] Write notes in VIMDOC and use Vim-native `:TOhtml` to convert them to HTML. (Possibly write a Lua filter for Pandoc to make the resulting HTML easily convertible to other formats while preserving features like tags.)

## Current solution

### Configure Vim's handling of markdown files

I have a file type plugin at `~/.vim/ftplugin/markdown.vim`. There are several settings in that file that improve my workflow specifically for taking markdown notes.

### Markdown syntax

Markdown is the de facto standard for note-taking, it lacks a single definitive spec. Since Pandoc is the best tool for Markdown conversion, I will be following the [Pandoc Markdown spec](https://pandoc.org/MANUAL.html#pandocs-markdown). If a fallback is required for further clarity, I will use [Github Flavored Markdown](https://github.github.com/gfm).

### Links instead of tags

The zettelkasten method prefers curated entry points to notes over content searches. In the spirit of this convention, I have elected to forgo querying by tags. Navigation will be handled entirely by links. This has the added benefit of being fully supported by base Markdown syntax.

### Pandoc for online viewing

I am building my notes using Pandoc via a makefile. Currently, I am only using one non-default Pandoc extension: [wikilinks_title_after_pipe](https://pandoc.org/MANUAL.html#extension-wikilinks_title_after_pipe). Wikilinks are simpler to write. I tried working with plain markdown links, but they interrupted my flow-state.

## Previous solutions

### Vimwiki plugin

I tested [Vimwiki](https://github.com/vimwiki) for several months. It extends Vim's note taking capability in many significant ways. Most importantly, it reduces the mental overhead of note composition. Some key features of Vimwiki include:

- Excellent internal link navigation
- Automatic not creation from links
- Automatic global link updates upon file rename

Eventually, I managed to simplify my strategy sufficiently that the efficiency gains were marginal.

### Publishing notes with MDwiki

While using Vimwiki, I published my notes with [MDwiki](https://dynalon.github.io/mdwiki/).
