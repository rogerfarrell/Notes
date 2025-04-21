---
title: Pandoc table support is inclusive
subtitle: 'pandoc-discuss@googlegroups.com, <https://pandoc-discuss.narkive.com/WelKibjR/docx-to-markdown-how-to-set-table-format#post2>'
---

By default, Pandoc support all markdown table styles. This means any/all
tables will be correctly parsed to the AST on-read. On-write, Pandoc
will output simple tables when all styles are active. To constrain
Pandoc to a specific table style for output, you must first force Pandoc
to use strict markdown. This will disable support for all table styles.
You can then re-enable table support for your desired style.

# Example

This will constrain Pandoc to only use grid tables.

```zsh
pandoc --to=markdown_strict+grid_tables
```
