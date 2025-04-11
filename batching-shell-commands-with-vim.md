---
include-before: '[[vim]]'
title: Batching shell commands with Vim
---

Many default shell commands lack elegant implementations for working with multiple files. The typical workaround is to pipe *ls* to the standard input of an intermediate command, which effectively converts the list of filenames to a one-time shell script.[^1] While not optimal. This workflow does enable some interesting manipulations via Vim.

[^1]: <https://stackoverflow.com/a/2372739/28799158>

# Example: renaming files

Suppose you have a group of markdown files in a directory with spaces in the filenames.…[^2]

[^2]: <https://vim.fandom.com/wiki/Bulk_rename_files_with_Vim#:~:text=You%20can%20use%20Vim%20to,in%2Dmemory%20simplistic%20shell%20script.>

```zsh
\ls *.md | vim -
```

`\ls` runs the default *ls* regardless of any aliases you may have. This ensures clean output. `vim -` opens vim with the standard input. The result will be a new vim buffer with a list of filenames as plain text:

```zsh
a file with spaces in the name.md
another file.md
why would anyone use spaces in filenames.md
```

Now you may manipulate the filenames to create a list of shell commands. For example, you may use block selection and substitution to create the following.

```zsh
mv a\ file\ with\ spaces\ in\ the\ name.md	a-file-with-spaces-in-the-name.md
mv another\ file.md	another-file.md
mv why\ would\ anyone\ use\ spaces\ in\ filenames.md	why-would-anyone-use-spaces-in-filenames.md
```

Finally, to run these commands line by line run the following Vim command.

```vim
:w !sh
```
