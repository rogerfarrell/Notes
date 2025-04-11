---
include-before: '[[vim]]'
title: Find/replace in Vim
---

There are a couple ways to find/replace in Vim. The most vim-like way consists of populating the QuickFix list (`:help quickfix`) with all the files you intend to search across. You can then iterate through these files, applying any commands you desire.

# Populating the QuickFix list

My preferred way to populate the QuickFix list is using `:vimgrep` (`:vim` for short). This uses Vim's internal grep engine, which is consistent across systems. A typical command is as follows: `:vim /searchpattern/ pathtofiles`. See `:help :vimgrep` for more info. Note that this will populate the QuickFix list with all matches from all files at the specified path. This will be useful later.

# Running a find/replace on QuickFix entries

There are two relevant commands: `:cdo` and `:cfdo`. `:cdo` runs a command for all QuickFix list entries. `:cfdo` runs a command for all files with entries in the QuickFix list. 

- Using `:cdo`, you may find/replace only on lines in the QuickFix list: `:cdo s/searchpattern/replacepattern/`[^1]
- Using `:cfdo`, you may find/replace for all lines in any file with a QuickFix match: `:cfdo %s/searchpattern/replacepattern/`

[^1]: <https://stackoverflow.com/a/38004355/28799158>
