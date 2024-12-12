---
tags: #vim
---

# Multiplexing

Vanilla Vim is adequate for basic multiplexing: [vanilla-vim-multiplexing](vanilla-vim-multiplexing.md)

# Navigating `:help`

- See `:help key-notation` for key abbreviations

# Navigating files

- go to file under cursor: `gf`
  - Go to previous cursor position (in the jumplist): `<C-o>`
  - Go to next cursor position (in the jumplist): `<C-i>`
- In netrw filetree view, use `gn` to change root directory to selected
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
