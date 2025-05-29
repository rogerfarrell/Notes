---
title: Change image color profile with sips
author: '`man sips`'
---

Changing image color profiles is a task I find myself doing a lot.
Thankfully, advanced programs like Photoshop are not required to
accomplish this. We can use sips. Sips is a simple macOS command line
tool for manipulating images. Here we will use it to extract a color
profile from an image and apply it to some other image.

# Extracting a color profile from an image

Sometimes, it can be difficult to locate the color profile you want to
apply. One simple way to get around this is to convert a file in an
editor with the desired profile, then extract it from the output image
with sips.

```zsh
sips -x profilename.icc inputimage.jpg
```

This is a really simple command. `-x`/`--extractProfile` sets the
destination for the extracted profile.

# Applying the profile to an image

```zsh
sips -M inputprofile.icc perceptual -o outputimage.jpg inputimage.jpg
```

There is not too much to explain here either. `-M`/`--matchToWithIntent`
takes two arguments: a profile and a rendering intent. The intent
determines the way colors are converted to the new profile. Perceptual
retains visual equivalence. `-o`/`--out` sets the output file
destination.
