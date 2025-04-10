---
toc: true
---

[[vim]]

# Taking notes in Vim

Vim is a great platform for taking notes. However, some constraints are necessary to maximize efficiency for real-time thought-capture.

**This note is a work in progress. It may be out-of-date or have incomplete information.**

## Current solution

### Configure Vim's handling of markdown files

I have a file type plugin at `~/.vim/ftplugin/markdown.vim`. There are several settings in that file that improve my workflow specifically for taking markdown notes.

### Markdown syntax

Markdown is the de facto standard for note-taking, it lacks a single definitive spec. Since Pandoc is the best tool for Markdown conversion, I will be following the [Pandoc Markdown spec](https://pandoc.org/MANUAL.html#pandocs-markdown). If a fallback is required for further clarity, I will use [Github Flavored Markdown](https://github.github.com/gfm).

### Representing keystrokes

Since I spend a lot of time in the Vim help docs, I have decided to use Vim's notation for keystrokes and special characters. In practice, this means I am representing keystrokes using markdown inline code segments instead of the HTML `<kbd>` tag. For more information about Vim's notation syntax, see `:help notation`.

### Links instead of tags

The zettelkasten method prefers curated entry points to notes over content searches. In the spirit of this convention, I have elected to forgo querying by tags. Navigation will be handled entirely by links. This has the added benefit of being fully supported by base Markdown syntax.

### Pandoc for online viewing

I am building my notes using Pandoc via a makefile. Currently, I am only using one non-default Pandoc extension: [wikilinks_title_after_pipe](https://pandoc.org/MANUAL.html#extension-wikilinks_title_after_pipe). Wikilinks are simpler to write. I tried working with plain markdown links, but they interrupted my flow-state.

---

## Previous solutions

### Vim help docs

Vim supports writing your own custom help docs in the VIMDOC format. With some simple configuration, these can be accessed in exactly the same way as the built-in Vim help.

Custom help docs should be added to `~/.vim/doc/`.

In order for Vim to read the help files, VIMDOCs begin and end with special lines which contain metadata. The file must begin with a title line in the below format,[^1] and end with a modeline.[^2]

[^1]: `:help help-writing`
[^2]: `:help modeline`

```vim
*filetitle.txt*	{short description of the plugin}
```

#### Configuring Vim

Some minimal configuration is required to enable custom VIMDOCS. The following should be added to your *.vimrc*.

```vim
" USING VIM HELP DOCS FOR NOTES

" enables modelines in custom help files (This is overriding the default macOS config at /usr/share/vim/vimrc)
set modelines=1                                        

" regenerate help tags for personal notes on file save
autocmd BufWritePost ~/.vim/doc/* :helptags ~/.vim/doc 
```

#### Making a template

To reduce overhead when creating new notes a template like the one below is advisable. Note that I have set 'modifiable' and 'noreadonly' to enable editing.

```vim
*n-template.txt*  Aliases: *n-tmp*  Created: YYYY-MM-DD


your text here


 vim:tw=78:ts=8:noet:ft=help:norl:modifiable:noreadonly:
```

#### Writing to dos

VIMDOC has a native syntax for to dos (see below). Note that real tabs must be used for the syntax highlighting to work. If 'expandtabs' is enabled, tabs can be inserted by typing `<C-V>` and then `<Tab>`. Also, the to do title must begin with a lower case letter.

```vim
	*Todo	your to do (starting with a lower case letter)
```

### Vimwiki plugin

I tested [Vimwiki](https://github.com/vimwiki) for several months. It extends Vim's note taking capability in many significant ways. Most importantly, it reduces the mental overhead of note composition. Some key features of Vimwiki include:

- Excellent internal link navigation
- Automatic not creation from links
- Automatic global link updates upon file rename

Eventually, I managed to simplify my strategy sufficiently that the efficiency gains were marginal.

### Publishing notes with MDwiki

While using Vimwiki, I published my notes with [MDwiki](https://dynalon.github.io/mdwiki/).
