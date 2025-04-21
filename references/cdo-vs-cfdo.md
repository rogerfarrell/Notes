---
title: '`:cdo` vs `:cfdo`'
author: 'Stack Overflow, <https://stackoverflow.com/a/38004355/28799158>'
---

`:cdo` runs a command once for *every QuickFix entry*. `:cfdo` runs a
command once for *every file with QuickFix entries*.

**Important:*** This means that the following command will run `:%s/`
*multiple times* if the file has multiple QuickFix entries.

```vim
:cdo %s/searchpatter/replacepattern/ | update
```
