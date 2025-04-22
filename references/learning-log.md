---
title: Learning log
---

--------------------------------------------------------------------------------------------------------------------------------------
date            description                                                         references
--------------- ------------------------------------------------------------------- --------------------------------------------------
2025-04-18      In Vim command mode, `<cfile>` is replaced with the filename under  `:help <cfile>`
                the cursor.

2025-04-18      Lilypond is a musical markup language based on ABC and LaTeX.       <https://lilypond.org>, <https://abcnotation.com>, <https://github.com/pandoc/lua-filters/tree/master/lilypond>
                There is a (depreciated) Pandoc Lua filter for it already.

2025-04-18      In Vim GREP, the `\%V` atom restricts the search to the last        `help /\%V`, <https://vim.fandom.com/wiki/Search_and_replace_in_a_visual_selection#Substituting_in_a_visual_selection>
                visual mode selection.

2025-04-18      In Vim command mode, use `<Up>` and `<Down>` to scroll through      `:help c_<Up>`, `:help c_<Down>`
                history just like in the shell.

2025-04-18      In Vim, use `:ene`/`:enew` to begin editing a new file in the pwd.  `:help :enew` 

2025-04-17      I finally remembered where I bought my favorite round thick-rimmed  <https://www.fytoo.com/product/FT0969?id=2239>
                glasses.

2025-04-17      Language is provably ambiguous.                                     <https://youtu.be/rWjUS2h2BfU?si=pITI0xi3Fq0LUz8p>

2025-04-17      The *royal order of adjectives* is a standard order for chaining    <https://dictionary.cambridge.org/us/grammar/british-grammar/adjectives-order>
                adjectives in English.

2025-04-17      ShellCheck is a Haskell shell script validator.                     <https://hackage.haskell.org/package/ShellCheck>

2025-04-16      GitHub CLI extension leaves much to be desired. Currently, it can   <https://docs.github.com/en/copilot/using-github-copilot/using-github-copilot-in-the-command-line>
                only process shell commands.                                                           

2025-04-16      API keys are not a part of the ChatGPT Plus subscription. They are  <https://community.openai.com/t/api-access-as-a-chatgpt-plus-subscriber/573409/2>
                served by the OpenAI API platform.                                                       

2025-04-15      InDesign’s GREP supports word boundaries: `\b`. (It also supports   <https://www.oreilly.com/library/view/grep-in-indesign/9780596157173/ch04.html>
                the opening/closing boundaries: `\<` and `\>`.)                                         

2025-04-10      Zenburn is a Vim color scheme used natively for Pandoc syntax       <https://github.com/jnurmine/Zenburn>
                highlighting. It is so good, I am using it in my .vimrc.                                         

2025-04-10      SVG favicons are now a thing.                                       <https://css-tricks.com/svg-favicons-and-all-the-fun-things-we-can-do-with-them/>

2025-04-10      In CSS, use `display: flow-root;` to ensure parent elements min     <https://www.digitalocean.com/community/tutorials/css-no-more-clearfix-flow-root>
                size accounts for floated elements.                                                           

2025-04-09      In Vim insert mode, evaluate expressions (e.g. math) by typing      `:help c_CTRL-R_=`, <https://vimtricks.com/p/vim-calculator/>
                `<C-R>=yourexpression<CR>`.                                         

2025-04-09      In Vim, open file under the cursor in a new split with `CTRL-W_f`.  `:help CTRL-W_f`, <https://vimtricks.com/p/open-file-in-a-split/>

2025-04-09      In Vim, quickly switch to a one-time shell with `:shell` or `:sh`.  `:help :shell`

2025-04-09      In Git, use `git reset` to clear local changes                      <https://stackoverflow.com/a/1146981/28799158>
                since last commit.

2025-04-09      In Vim, use `g&` to repeat last substitution.                       `:help g&`, <https://vi.stackexchange.com/a/18107/54693>

2025-04-09      In Git, safely undo up to a prior commit without destroying         <https://stackoverflow.com/a/21718540/28799158>
                history: `git revert --no-commit 0d1d7fc3..HEAD`

2025-04-08      Pandoc will treat iframes and other plain HTML as code blocks if    <https://github.com/jgm/pandoc/issues/2244>
                there are more than four spaces worth of indentation.

2025-04-08      In Vim, delete all but current buffer with `%bd | e#`               <https://stackoverflow.com/a/34050776/28799158>

2025-04-08      Quickly create a PDF with a subset of the pages of another PDF by
                selecting the pages in the sidebar, right-clicking, and selecting
                *Extract Pages…*.

2025-04-04      A joke about how deep the rabbit hole goes for solving computer     <https://people.willamette.edu/~fruehr/haskell/evolution.html>
                problems.                                          

2025-04-03      The T2 chip on Apple computers can make installing Linux difficult. <https://wiki.t2linux.org>

2025-04-02      Tufte CSS is a CSS styling philosophy derived from Edward Tufte’s   <https://edwardtufte.github.io/tufte-css/>
                books and handouts. (It is very elegant.)

2025-04-02      `git checkout -b [<name-of-new-branch>]` is a composition of        <https://stackoverflow.com/questions/66882952/how-to-create-new-local-branch-and-switch-between-branches-in-git>
                `git branch` and `git checkout`.

2025-04-02      Pandoc multiline tables best fit my needs for note taking. NOTE:    <https://pandoc.org/MANUAL.html#extension-multiline_tables>
                They still convert to single-line.

2025-04-02      In Vim, use `:echo expand("%:h")` to show the path of the current   `:help :echo`, `:help expand()`
                file.

2025-04-02      In Vim, `%` refers to the complete file path, `%:h` gets the head   `:help %:h`
                (path minus filename).

2025-04-02      In Vim, insert current time insert mode with                        <https://superuser.com/questions/451340/how-to-insert-the-date-into-vim>
                `<C-r>=strftime('%F')<CR>`.
--------------------------------------------------------------------------------------------------------------------------------------
