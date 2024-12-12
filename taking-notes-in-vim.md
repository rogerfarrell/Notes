---
tags: #vim
---

Vim is a great platform for taking notes. However, some constraints are necessary to maximize efficiency for real-time thought-capture.

# Markdown syntax

Markdown is the de facto standard for note-taking, it lacks a single definitive spec. Since Pandoc is the best tool for Markdown conversion, I will be following the [Pandoc Markdown spec](https://pandoc.org/MANUAL.html#pandocs-markdown). If a fallback is required for further clarity, I will use [Github Flavored Markdown](https://github.github.com/gfm).

# YAML for metadata

[YAML](https://yaml.org) is a clean, simple solution for representing metadata within a Markdown file.

# Tags

I will be using two separate tag formats.

- I will use the `#tag` format to list topics contained within a regular note.
- Over time, I will want to create hub notes for every tag (the tag definitions, if you will). Each of these hubs will be be tagged with `##tag`, enumerating the tag for which it is a hub. [Exuberant ctags](https://ctags.sourceforge.net) has been configured to support this format. Pressing `<C-]>` will jump to the tag definition.

# Avoid plugins

See this great article to get started writing notes in vanilla Vim: <https://joereynolds.github.io/vim/2018/07/07/you-dont-need-vimwiki.html>. This one is not bad either: <https://www.edwinwenink.xyz/posts/42-vim_notetaking/#step-4-methods-for-finding-notes>.
