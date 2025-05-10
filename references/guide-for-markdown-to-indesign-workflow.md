---
title: 'Guide: Markdown-to-InDesign workflow'
author: Roger Farrell
---

I prefer to spend as little time in InDesign as possible. My preferred
typsetting tools are markdown and [Pandoc](https://pandoc.org). This is
a description of how I use Pandoc's markdown syntax to generate
pre-styled manuscripts that cleanly import into InDesign.

Pandoc is just a great tool. It can do almost anything with text-based
files. For this workflow, we only need to learn a couple of its perks.

## Fenced divs and spans

Pandoc supports fenced divs with the following syntax.[^1]

[^1]: <https://pandoc.org/MANUAL.html#extension-fenced_divs>

``````markdown
``` {some attributes}
I am inside a div.
```
``````

Similarly, spans are supported like this:

``````markdown
[I am a span.]{some attributes}
``````

## Custom styles

Custom styles can be set as attributes for fenced divs and spans.[^2]

[^2]: <https://pandoc.org/MANUAL.html#custom-styles>

``````markdown
``` {custom-style="myParagraphStyle"}
I am a paragraph. I have a special [character style.]{custom-style="myCharacterStyle"}
```
``````

## Pandoc supports ICML

Conveniently, Pandoc supports conversion to ICML (InCopy's native file
type).[^3] Custom styles set using the above method are converted directly
to paragraph and character styles. The best part is that the styles are
automatically created to reflect the semantic hierarchy of the
Manuscript. If you are familiar with HTML, you will notice they resemble
well-organized CSS selectors.

[^3]: <https://pandoc.org/MANUAL.html#custom-styles>

```zsh
pandoc manuscript.md --standalone --output=manuscript.icml
```

*Note: The `--standalone` flag is required for correct output.*

## Importing into InDesign
At this point, you can import the ICML directly into an InDesign story
with the *place* command. In theory, you could make changes solely in
the markdown, rebuild the ICML, and never touch your content in
InDesign.
