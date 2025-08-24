This is a novel approach to structuring book content in a heterarchical fashion. There are only two inherent structures in text documents: inlines and blocks. The premise of this model is to flatten content down to the most basic forms of these structures. (Fundamentally individual characters are the most basic inlines.) The only "semantic" data these contraints permit are composable classes. Effectively, this model is equivalent to a subset of HTML consisting only of `div` and `span` where nesting is not permitted and `span` may be applied only to single characters. In this way, sematic structure emerges from the continuity of class composition across neighboring elements.

# A single line

```
(inlines
  "This is the actual text of the line."
  "bbbb________iiiiii_____________8888_"
  ((b bold) (i italic) (8 arbitrary-style))
```

This inlines expression consists of three lists. The first list contains the text itself. The second list contains the formatting data, per character. The third list contains tuples which provide a legend for the single-character formatting codes in the second list. It is assumed that insertions, deletions, and replacements of text would be handled by functions which apply the changes to all three lists. I believe monads would be of use to abstract away these implementation details.

An simpler, less-readable alternative representation:

```
(inlines
  (("T" bold)
   ("h" bold)
   ("i" bold)
   ("s" bold)))
```

# Multiple lines

```
(blocks
  ((chapter h1
     (inlines ...))
   (chapter body
     (inlines ...))
   (chapter body indent-1
     (inlines ...))))
```
