[Vim](Vim.md)

# Avoiding visual mode in Vim

Visual mode is an excellent tool in the Vim toolbox. In fact, it may be one of Vim's most powerful tools. However, it can quickly get in the way of best practices because of its versatility. It is rather like an adjustable wrench. You can use it for almost everything, but it is generally preferred to find the appropriate size wrench for the job. I think of visual mode as Vim's adjustable wrench for text objects.

Much of Vim's power comes from the specificity of its commands. Nearly anything you can think of can be selected efficiently with the right combination of motions. Ideally, this combination will target a standard text object (or noun). With such motions, the precise location of the cursor is irrelevant. (`i` is an excellent example.) Using these techniques whenever possible helps continually push the limits of your understanding of Vim. It makes text editing a more subconscious activity. In [this video](https://youtu.be/wlR5gYd6um0?si=QIPzDS_mviuYylTo), Chris Toomey presents this approach with exceptional clarity.

Of course, there will always be rare occasions when you lack a practical means to make your desired selection. In such cases, visual mode has your back. Though, you might try using [markers](Using marks in Vim.md) before resorting to the adjustable wrench.
