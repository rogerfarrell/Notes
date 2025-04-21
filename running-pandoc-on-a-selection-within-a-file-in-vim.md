---
title: Running Pandoc on a selection within a file in Vim
subtitle: '[[vim]]'
---

Vim is great for editing markdown, but there still seem to be occasions
where macros and other tricks are not quite enough. Markdown tables are
a perfect example. Vim's block selector and substitution commands are a
big help, but sometimes you just want to reformat the whole table in one
command.

In such cases, you can run Pandoc *on a visual mode selection*
converting only a part of the file. Suppose you have the following
table:

```markdown
| Column A | Column B | Column C |
|----------|----------|----------|
| Data 1   | Stuff    | Things   |
| Data 2   | More     | Whatever |
| Meh      | IDK      | ¯\_(ツ)_/¯ |
| Yep      | Lazy     | Didn't even align this |
| ???      | ...      | Table auto-generated probably |
```

You could select this table in visual mode and then run this command:

```vim
:'<,'>! pandoc -t markdown_strict+grid_tables
```

- `:'<,'>!` runs a shell command, passing the selection as standard
  input.
- `-t markdown_strict+grid_tables` sets the output format to markdown
  with [grid
  tables](https://pandoc.org/MANUAL.html#extension-grid_tables).[^1]

[^1]: `markdown_strict` is necessary because of the way Pandoc handles
  table styles. [[references/pandoc-table-support-is-inclusive]]

Here is the result:

```markdown
+----------+----------+-------------------------------+
| Column A | Column B | Column C                      |
+==========+==========+===============================+
| Data 1   | Stuff    | Things                        |
+----------+----------+-------------------------------+
| Data 2   | More     | Whatever                      |
+----------+----------+-------------------------------+
| Meh      | IDK      | ¯\_(ツ)\_/¯                   |
+----------+----------+-------------------------------+
| Yep      | Lazy     | Didn’t even align this        |
+----------+----------+-------------------------------+
| ???      | …        | Table auto-generated probably |
+----------+----------+-------------------------------+
```
