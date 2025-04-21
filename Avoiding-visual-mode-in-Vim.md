---
title: Avoiding visual mode in Vim
subtitle: '[[vim]]'
---

Visual mode is an excellent tool in the Vim toolbox. In fact, it may be
one of Vim's most powerful tools. However, it can quickly get in the way
of best practices because of its versatility. It is rather like an
adjustable wrench. You can use it for almost everything, but it is
generally preferred to find the appropriate size wrench for the job. I
think of visual mode as Vim's adjustable wrench for text objects.

Much of Vim's power comes from the specificity of its commands. Nearly
anything you can think of can be selected efficiently with the right
combination of motions. Ideally, this combination will target a standard
text object (or noun). With such motions, the precise location of the
cursor is irrelevant. (`i` is an excellent example.) Using these
techniques whenever possible helps continually push the limits of your
understanding of Vim. It makes text editing a more subconscious
activity.[^1]

[^1]: Chris Toomey gave a great talk on this approach to
  Vim: [[references/mastering-the-vim-language]]

Of course, there will always be rare occasions when you lack a practical
means to make your desired selection. In such cases, visual mode has
your back.[^2] One occasion where visual mode is absolutely the correct
tool is when running a shell command on a selection within a file. (E.g.
[[running-pandoc-on-a-selection-within-a-file-in-vim]].)

[^2]: Though, you might try using using marks in Vim before resorting to
  the adjustable wrench: [[references/using-marks-in-vim]]
