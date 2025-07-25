---
title: 'Guide: Docsflow and Share for Review'
author: Roger Farrell
---

Manuscripts are frequently written in Google Docs.
[DocsFlow](https://emsoftware.com/products/docsflow/) is a plugin for
InDesign which dramatically improves the interoperability of the GDOC
and INDD formats.[^1] In particular, it adds dynamic linking of content
from GDOCs in a way that closely resembles Adobe's own ICML format. The
following is my current workflow for laying out manuscripts from Google
Docs via DocsFlow. It draws heavily from the [official DocsFlow user
guide](https://emsoftware.com/products/docsflow/user-guide/). Be sure to
check it out for more exhaustive step-by-step walk-throughs.

[^1]: The creators of DocsFlow, [Em Software](https://emsoftware.com),
    have also created an equivalent plugin for Microsoft Word called
    [WordsFlow](https://emsoftware.com/products/wordsflow/).

# Note: Text and formatting are different kinds of data

Most typsetting consists of adding graphical formatting to a (mostly)
unformatted text manuscript. It is important to understand that these
are two different kinds of information. The manuscript is (basically)
just text. The formatting data specifies things like font, size,
images, etc.. Modern text editors and design programs do a great job
seamlessly abstracting away this distinction, but it is important to
keep this in mind when using a tool like DocsFlow.

What DocsFlow does is maintain the text content in the GDOC separate
from the INDD. This way, content changes can be made in Google Docs even
after typsetting in InDesign. However, this functionality does not come
without its drawbacks. To avoid lots of weird unexpected behavior, it is
best to make content (text) changes in the GDOC whenever possible.

# Step 1: Set up the INDD

DocsFlow supports one InDesign story per GDOC. You may need to thread
text frames around content not managed by DocsFlow. Cover, title,
table of contents, and other pages will need to be added separately.

# Step 1: Import the manuscript

In the DocsFlow place menu, be sure `Show import options` and `Link to
document` are selected. Then add mappings for italic, semibold, and
semibold-italic character styles in the subsequent import options. For
most everything else, the defaults are the most sensible. You may want
to add paragraph style mappings for headings depending on your InDesign
stylesheet.

# Step 2: Typset in InDesign

As we established prior, content should be edited in Google Docs
whenever possible. Other than that, the typsetting workflow is
essentially unchanged.

# Step 3: Handle corrections

Once the INDD is ready for proofing, a preview link should be sent via
[Share for
Review](https://helpx.adobe.com/indesign/using/share-for-review.html).
The corrections workflow is simple:

1.  Share the preview URL
2.  View comments directly in InDesign
3.  Make corrections
4.  Update preview link

---

# References

- DocsFlow user guide:
  <https://emsoftware.com/products/docsflow/user-guide/>
- InDesign User Guide, Share for Review:
  <https://helpx.adobe.com/indesign/using/share-for-review.html>
