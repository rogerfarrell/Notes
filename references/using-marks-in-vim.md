---
title: Using marks in Vim
author: '`:help mark-motions`'
---

Marks enable rapid navigation between common (and arbitrary)
destinations in any file. Below are some practical takeaways.

  -----------------------------------------------------------------------
  command        description
  -------------- --------------------------------------------------------
  `m{a-zA-Z}`    set mark `{a-zA-Z}`

  `` `{a-z} ``   jump to marker `{a-zA-Z}`

  `'{a-z}`       jump to line of marker `{a-zA-Z}`

  `` `[ ``       jump to first character of the previously changed or
                 yanked text

  `'[`           jump to first line of the previously changed or yanked
                 text

  `` `] ``       jump to last character of the previously changed or
                 yanked text

  `']`           jump to last line of the previously changed or yanked
                 text

  `` `< ``       jump to first character of last visual selection

  `'<`           jump to first line of last visual selection

  `` `> ``       jump to last character of last visual selection

  `'>`           jump to last line of last visual selection
  -----------------------------------------------------------------------

Marker motions can be combined with commands just like any other
standard motion (e.g ``d`a``).
