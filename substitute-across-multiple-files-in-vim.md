---
title: Substitute across multiple files in Vim
subtitle: '[[vim]]'
---

There are a couple ways to find/replace in Vim. The most vim-like way
consists of populating the QuickFix list (`:help quickfix`) with all the
files you intend to search across. You can then iterate through these
files, applying any commands you desire.

# Populating the QuickFix list

My preferred way to populate the QuickFix list is using `:vimgrep`
(`:vim` for short). This uses Vim's internal grep engine, which is
consistent across systems. A typical command is as follows: `:vim
/searchpattern/ pathtofiles`. See `:help :vimgrep` for more info. Note
that this will populate the QuickFix list with all matches from all
files at the specified path. This will be useful later.

# Running a find/replace on QuickFix entries

Once the QuickFix list is populated, You can substitute across all files
just like a single file. See the following command:

```vim
:cfdo %s/searchpatter/replacepattern/ | update
```

- `:cfdo` runs the following command across all files.[^1]
- `| update` is necessary to automatically save the file before the
  search move to the next match.

[^1]: `:cfdo` is generally preferred over `:cdo`:
  [[references/cdo-vs-cfdo.md]]
