---
title: Prowse, a Vim plugin for surfing the web as markdown
subtitle: '[[vim]]'
---

# Prowse, a Vim plugin for surfing the web as markdown

The modern web is bloated and over-glamorous. In an effort to simplify
my web browsing, I experimented with TUI browsers such as
[Lynx](https://lynx.invisible-island.net) and
[W3M](https://w3m.sourceforge.net), but they did not feel second-nature.

I spend so much time editing markdown in Vim that it is often more
comfortable to read than even minimally rendered HTML. As it happens,
this is also my favorite way to read webpages. The workflow is simple:

1. Open a plain HTML file from the web with Netrw (This is just like
   opening any other file in Vim.)
2. Convert the current buffer to markdown with Pandoc
3. Set the syntax highlighting to markdown

The Vim commands to accomplish this are simple enough to type out
manually, but that will get fatiguing quickly when following links
repeatedly. I decided to write a plugin called
[Prowse](https://github.com/rogerfarrell/prowse) for the
purpose.
