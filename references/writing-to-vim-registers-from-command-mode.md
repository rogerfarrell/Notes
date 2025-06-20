---
title: Writing to vim registers from command mode
author: Roger Farrell
---

Vim registers are super handy for quick access of various information.
Most of the time, yanking into a register is the simplest way to write
to a register. However, there are times when you may desire to write to
a register from command mode. One such example is when you want to copy
the contents of one register to another. This can be done very simply
with the following.

```vim
:let @b=@a
```

In this example the contents of register `a` are copied to register `b`.

To write raw commands directly to the macro, use single quotes:

```vim
:let @d='SI am replacing the contents of this line.'
```
