---
title: Navigating around in your shell
author: '<https://blog.meain.io/2023/navigating-around-in-shell/>'
---

The author shares many useful tips for navigating shell environments.
Most of them were built-in. The following were particularly relevant to
my interests.

# Go to previous directory

```zsh
cd -
```

This command takes you to the previously visited directory.

# Use globs

Cut out large sections of long paths with globs. E.g.
`~/Downloads/**/mynestedproject`.

# Case-insensitivity and spellcheck

```zsh
setopt nocaseglob # ignore case
setopt correct # correct spelling mistakes
```

# `pushd` and `popd`

`pushd` is like `cd` but it adds the current directory to the directory
stack prior to the change. You can use `popd` to navigate back to the
latest entry on the stack.

# Create custom hashes

```zsh
hash -d yourprefixname=fullpathor
```

This lets you define custom prefixes such as `~projects` for relative
paths. The author cited another source[^1] for more info.

[^1]:
  <https://til.hashrocket.com/posts/xsavbhlrz4-shortcuts-with-hash-d-in-zsh>

# `CDPATH`

The `CDPATH` envirionment variable can be set to add autocompletion and
relative path navigation. For example:

```zsh
CDPATH+=$HOME/Downloads
```

Now I could `cd` into any subdirectory in `Downloads` from any
directory.
