---
title: 'Guide: batch append suffix to filename in Bash'
author: Roger Farrell
---

Batch appending to filenames is a common task. The following is my
preferred method, but there are many other good ones.[^1] Note that
prepending works much the same way.

[^1]: This thread on Stack Overflow has some good ideas:
    <https://stackoverflow.com/a/208220>

```bash
for name in *.extension
do
mv "$name" "${name%.extension}-suffix.extension"
done
```

This is a natural extension of a single line move command. The extension
is removed via the `%` and replaced with *suffix + extension*. (In Bash
parameter expansion, `%` subtracts a suffix from the pattern
non-greedily. For more information, see `man bash` under *Parameter
Expansion*. (Search for `${parameter%word}`.))
