---
title: Netrw workflow
author: '`:help netrw-i`'
---

Netrw can be used to great effect with no configuration. To navigate
directories mid-editing, use the below workflow from the Netrw help
docs (see `:help netrw-i`).

**Bonus tip:** In Netrw filetree view, use `gn` to change root directory to the current
selection.

```txt
vim .
(use i until a tree display shows)
navigate to a file
v  (edit as desired in vertically split window)
ctrl-w h  (to return to the netrw listing)
P (edit newly selected file in the previous window)
ctrl-w h  (to return to the netrw listing)
P (edit newly selected file in the previous window)
...etc...
```
