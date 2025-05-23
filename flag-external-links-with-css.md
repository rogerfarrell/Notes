---
title: Flag external links with css
subtitle: '[[development]]'
---

# Background

It turns out the developer of Obsidian is a smart guy. (What a
surprise!) Despite adopting different tools,[^1] I find myself guided to
a very similar style of markdown. For example, I have chosen to use
`[[wikilinks]]` for internal links. This serves two purposes:

[^1]: [Vim](https://github.com/vim/vim) and [Pandoc](https://pandoc.org)

- Internal links are visible at-a-glance in Vim and other text editors.
- The overhead of creating internal links during stream-of-consciousness
  is reduced.

Once again taking inspiration from Obsidian, I have decided to flag
external links with a special character. This is handy when you are
jumping around in old notes with lots of hyperlinks. It is a feature
worth imitating.

# Implementing the feature

For my reading mode, I host my notes at <https://rogerfarrell.net>. They
are converted to HTML via Pandoc and deployed with [GitHub
Pages](https://pages.github.com).

Internal link in markdown:

```markdown
[[taking-notes-in-vim]]
```

Internal link rendered to HTML via Pandoc:

```html
<a href="taking-notes-in-vim" class="wikilink">taking-notes-in-vim</a>
```

Here is how we target them with CSS:

```css
a[href^="http"]:not([href^="https://rogerfarrell.net"]):after
{
  content:"\2B08"; /* this is a Northeast-pointed arrow to signify external links */
  font-size: 0.8em;
  line-height: 0.8em;
  vertical-align: super;
}
```

The `^=` in the href attribute denotes that the href *begins* with the
specified string. `\2B08` is the CSS representation of ⬈.
