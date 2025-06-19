---
title: InDesign GREP snippets
author: Roger Farrell
---

InDesign uses a Perl flavor of regex.[^1] The following are some useful
expressions I have accumulated over the years.

[^1]: As far as I know this is not documented by Adobe directly. See
    [this
    question](https://graphicdesign.stackexchange.com/q/120440/211504)
    on the graphic design Stack Exchange.

# Find page references

```
\b(([Pp]age)|(p+\.))\s\d+
```

# Remove extra white space

This looks for contiguous white space characters and removes all but the
last instance.

Find:

```
(\s+)(\s)
```

Replace:

```
$2
```
