---
title: 'Guide: batch append suffix to filename in Bash'
author: Roger Farrell
---

```
for name in *.extension
do
mv "$name" "${name%.extension}-suffix.extension"
done
```

This is a natural extension of a single line move command. The extension
is removed via the `%`[^1] and replaced with *suffix + extension*.

[^1]: In Bash parameter expansion, `%` subtracts a suffix from the
    pattern non-greedily. For more information, see `man bash` under
    *Parameter Expansion*. (Search for `${parameter%word}`.)
