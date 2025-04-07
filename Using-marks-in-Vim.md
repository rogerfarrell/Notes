[[vim]]

# Using marks in Vim

Marks enable rapid navigation between common (and arbitrary) destinations in any file. See `:help mark-motions` for the complete documentation. Below are some practical takeaways.

----------------------------------------------------------------------------------------------------
command             description                                                       
----------------    --------------------------------------------------------------------------------
`m{a-zA-Z}`         set mark `{a-zA-Z}`

`` `{a-z} ``        jump to marker `{a-zA-Z}`

`'{a-z}`            jump to line of marker `{a-zA-Z}`

`` `[ ``            jump to first character of the previously changed or yanked text

`'[`                jump to first line of the previously changed or yanked text

`` `] ``            jump to last character of the previously changed or yanked text

`']`                jump to last line of the previously changed or yanked text
----------------------------------------------------------------------------------------------------

Marker motions can be combined with commands just like any other standard motion (e.g ``d`a``).
