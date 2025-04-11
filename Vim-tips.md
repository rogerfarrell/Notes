---
title: Vim tips
subtitle: '[[vim]]'
---

# To do

- [ ] Read and process this great article about GREP in Vim: <https://thevaluable.dev/regular-expression-basics-vim-grep/>

# Find/replace

- Immediately after searching a pattern with `/` use `c//e` to replace the currently highlighted match.
- Refer to `:help pattern-atoms` for some basic info about Vim's default GREP flavor.

# Multiplexing

Vanilla Vim is adequate for basic multiplexing: [[multiplexing-in-vanilla-vim]]

# Navigating `:help`

- See `:help key-notation` for key abbreviations

# Navigating files

- Quickly open Netrw to the path of the current file: `:E`
- go to file under cursor: `gf`
  - Go to previous cursor position (in the jumplist): `<C-o>`
  - Go to next cursor position (in the jumplist): `<C-i>`
- In Netrw file tree view, use `gn` to change root directory to selected
- Change root directory: `:cd path/to/new/root`

- Clear highlighting till next search: `:nohlsearch` or `:noh`

# Targeting nouns

- Around (whole noun): `<verb> i <noun>`
- Inside (inner content): `<verb> i <noun>`

# Moving the cursor

- Scroll up: `<C-u>`
- Scroll down: `<C-d>`
- Go to previous `{`: `[{`
- Go to next `}`: `]}`
