---
title: 'Guide: Batch convert PDFs to JPGs'
author: Roger Farrell
---

A frequent chore I am called upon to perform is generating JPGs of book
covers from PDFs. This is especially tedious as many of the covers
belong to series. Consequently, I researched a way to perform this task
on the command line via [ImageMagick](https://imagemagick.org). This
workflow allows me to process PDFs in batches via
[xargs](https://en.wikipedia.org/wiki/Xargs) or by writing a series of
commands in Vim which can be run line-by-line via `:w !sh`. It is much
faster than processing the images by hand.

*Note: This method pairs nicely with [this InDesign
script](https://github.com/xKeNcHii/Mockup-Automation-Script) for batch
generating product mockups.*

First, I must convert each PDF to a high-quality JPG.[^1] I remove the
alpha channel and set the background to white. Otherwise, transparent
parts of the image may appear as other colors.[^2]

[^1]: See this thread on Stack Overflow for more info on converting PDFs
    to JPGs with ImageMagick:
    <https://stackoverflow.com/questions/6605006/convert-pdf-to-image-with-high-resolution>

[^2]: See this thread on Stack Overflow for more info on dealing with
    transparent images via ImageMagick:
    <https://stackoverflow.com/questions/2322750/replace-transparency-in-png-image-with-white-background>

```bash
magick -verbose \
       -density 300 \
       input.pdf \
       -background white \
       -alpha remove \
       -alpha off \
       -quality 100 \
       -flatten \
       output-f-lg.jpg
```

I also typically want a 600px wide version of every image:[^3]

[^3]: For more info on resizing with ImageMagick, see this Stack
    Overflow thread:
    <https://github.com/xKeNcHii/Mockup-Automation-Script>

```bash
magick input-f-lg.jpg -resize 600 output-f-sm.jpg
```
