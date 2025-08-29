---
title: Learning log
---

--------------------------------------------------------------------------------------------------------------------------------------
date            description                                                         references
--------------- ------------------------------------------------------------------- --------------------------------------------------
2025-08-28      In Emacs, `C-o` *opens* a new line after the point. This is a close `C-h k C-o`
                as Emacs gets to Vim's `C-o` and `C-O`.

2025-08-28      In Emacs on macOS, the tile bar can be disabled for a cleaner look. <https://stackoverflow.com/a/72426586>

2025-08-27      The Inscape CLI does great conversions from SVG to image formats.   <https://stackoverflow.com/a/14174624>

2025-08-27      In Guix, the *sops-guix* package is an interesting way to manage    <https://fishinthecalculator.me/blog/secrets-management-with-sops-guix.html>
                secrets.

2025-08-25      In Lisp, comment convention recommends `;` for end-of-line comments <https://stackoverflow.com/a/6365579>,
                and `;;` for comments on their own lines.                           <https://www.lispworks.com/documentation/HyperSpec/Body/02_ddb.htm>

2025-08-22      In Emacs, type `C-q` to insert a literal character regardless of    `C-h k C-q`
                bindings. (Think of it at the interactive equivalent of quoting
                symbols in Lisp.)

2025-08-22      In Emacs, evaluate `(insert (format-time-string "%Y-%m-%d"))` to
                insert the current date in *YYYY-MM-DD* format.

2025-08-22      In Emacs, *devil-mode* may be the best modifier-less minor mode.    <https://github.com/susam/devil>,
                                                                                    <https://susam.github.io/devil/>

2025-08-22      In Emacs, *god-mode* beautifully addresses modifier fatigue.        <https://chrisdone.com/posts/god-mode/>,
                                                                                    <https://github.com/emacsorphanage/god-mode>

2025-08-20      In Vim insert mode, `ga` will reveal information about the          `:help ga`
                character under the cursor, including its Vim digraph.

2025-08-14      This author has an interesting perspective on prepress via CSS      <https://iangmcdowell.com/blog/posts/laying-out-a-book-with-css/>
                paged media module.

2025-08-14      SXML is a Guile Scheme standard for representing XML.               <https://www.gnu.org/software/guile/manual/html_node/SXML.html>

2025-08-13      A potentially useful guide on setting up Gnus in Emacs.             <https://www.bounga.org/tips/2020/05/03/multiple-smtp-accounts-in-gnus-without-external-tools/>

2025-08-13      50# offset (uncoated) paper stock has an average thickness of       <https://www.hollandlitho.com/paper_thickness_and_weight_cutting_through_the_confusion.html>
                0.004 in.

2025-08-12      In Vim *and* Emacs evil-mode, `CTRL-B` is bound to `<PageUp>`.      `:help CTRL-B`, `C-h f evil-scroll-page-up`

2025-08-12      In Emacs ELisp buffers, tab autocompletion of procedures can be     <https://stackoverflow.com/a/7023515>
                enabled.

2025-08-11      This is a good place to start when learning Emacs.                  <https://protesilaos.com/codelog/2019-12-20-vlog-switch-emacs/>

2025-08-11      Protesilaos Stavrou is a Greek thinker with potential insights on   <https://protesilaos.com/about/>
                FOSS and Emacs.

2025-08-10      This paper explains the rationale behind LAML.                      <https://archives.iw3c2.org/www2002/_normark/laml/papers/lugm-laml.pdf>

2025-08-10      LAML is perhaps the nicest Lisp markup language.                    <https://people.cs.aau.dk/~normark/laml-distributions/laml/index.html>

2025-08-10      I guess I should not be surprised that there are many attempts at   <https://www.cliki.net/Lisp+Markup+Languages>
                Lisp-as-markup.

2025-08-10      Guix channels may be embedded in the system and home config files.  <https://guix.gnu.org/manual/devel/en/html_node/Customizing-the-System_002dWide-Guix.html>,
                                                                                    <https://guix.gnu.org/manual/en/html_node/Guix-Home-Services.html>

2025-08-08      In Bash, use `du -hs .` to get the size of the current directory.   `man du`, <https://stackoverflow.com/a/16662027>

2025-08-07      In Emacs, `M-n` to access minibuffer future history moving files    <https://www.reddit.com/r/emacs/comments/1hevtrx/dired_faster_way_to_move_files/>,
                between dired buffers.                                              <https://engineering.collbox.co/post/working-faster-in-emacs-by-reading-the-future/>

2025-08-02      In Emacs, `C-x 4 0` closes the current window *and* buffer.         <https://superuser.com/q/1309765/2465866>

2025-08-01      This is a great introduction into Vim-comparable motions in Emacs.  <https://www.masteringemacs.org/article/effective-editing-movement>

2025-07-16      A potentially useful plugin for batching various InDesign exports.  <https://creativepro.com/files/kahrel/indesign/batch_convert.html>

2025-07-10      This is a very provocative talk about interactive and visual        <https://jackrusher.com/strange-loop-2022/>
                programming.

2025-07-10      *Interactive programming* is what I have been looking for regarding <https://en.wikipedia.org/wiki/Interactive_programming>
                the *correct* way to interface with computers.

2025-07-09      In Vim insert mode, type `<C-o>` to use one normal mode command     `:help i_CTRL-O`
                without leaving insert mode.

2025-07-07      Guix has a handy reference card for frequent commands.              <https://guix.gnu.org/guix-refcard.pdf>

2025-07-04      LispKit is a library for developing Scheme on Apple devices. It has <https://www.lisppad.app/libraries/lispkit/lispkit-draw-chart-bar>
                some interesting graphing capabilities.

2025-07-02      These posts give the most detailed explanation of the InDesign      <https://indiscripts.com/post/2024/10/indesign-20-goes-to-mathml-1>,
                MathML implementation than I have found to-date.                    <https://indiscripts.com/post/2025/03/indesign-20-goes-to-mathml-2>

2025-07-01      This is a great basic usage of Guix Deploy.                         <https://stumbles.id.au/getting-started-with-guix-deploy.html>

2025-07-01      Gimp supports automated workflows via scripting in Scheme!          <https://www.gimp.org/tutorials/Basic_Batch/>

2025-06-27      In Vim, type `U` to toggle undo line.                               `:help U`

2025-06-27      In Vim, `ZZ` is equivalent to `:x`.                                 `:help ZZ`

2025-06-27      In Vim, `<C-d>` will show all matching help topics for an           `:help c_CTRL-D`
                incomplete help command.

2025-06-27      In Vim, type `<C-w>p` to go to the previous window.                 `:help CTRL-W_p`

2025-06-20      GUI apps can be started from the Linux virtual terminal via a       <https://linuxconfig.org/how-to-run-x-applications-without-a-desktop-or-a-wm>,
                number of methods.                                                  <https://superuser.com/q/550020>, <https://superuser.com/q/606811>

2025-06-20      David Thompson, a Guix contributor, gives some helpful perspective  <https://dthompson.us/posts/installing-guix-on-a-10th-gen-thinkpad-x1.html>
                on hardware compatibility with Guix's FOSS stance.

2025-06-20      In Vim, type `g<C-g>` to see information about the cursor position. `:help g_CTRL-G`, `:help word-count`

2025-06-20      In Vim, type `:set ruler` to enable line/column/relative position   `:help ruler`, <https://unix.stackexchange.com/a/335468/727998>
                info for the cursor in the bottom left of the window.

2025-06-19      In Vim insert mode, type `<C-k>Co` for the copyright symbol: ©.     `:digraphs`, `:help digraph`

2025-06-19      In Vim command mode, type `:e <cfile>` to create a new file at the  `:help <cfile>`
                path under the cursor.

2025-06-18      This devlog has some helpful info about an initial Guix setup.      <https://simendsjo.me/blog/20240712085803-initial_guix_home_setup.html>

2025-06-17      Guix deploy is a built-in feature for managing Guix on remote       <https://guix.gnu.org/manual/en/html_node/Invoking-guix-deploy.html>
                hardware.

2025-06-17      Haunt is a static site generator written in Guile Scheme.           <https://dthompson.us/projects/haunt.html>

2025-06-17      The man page for bash has a whole section about the readline (with  `man bash`
                keybinds.

2025-06-17      In Vim, Netrw cannot copy directories.                              <https://vi.stackexchange.com/questions/12095/is-it-possible-to-clone-a-directory-with-netrw>,
                                                                                    <https://stackoverflow.com/questions/26958059/vim-netrw-copy-commands>

2025-06-17      Vim can be configured to run as a command server when GUI support   `:help clientserver`, <https://subvisual.com/blog/posts/119-open-files-on-existing-vim-sessions/>
                is enabled.

2025-06-16      This is a great quick-start guide by the founder of Guix about      <https://guix.gnu.org/blog/2022/keeping-ones-home-tidy/>
                using Guix Home.

2025-06-13      This guy, Podiki, built a gaming rig with Guix System. He is also a <https://boilingsteam.com/how-i-built-my-new-linux-gaming-desktop-in-2021-with-amd-cpugpu-and-gnu-guix/>
                major contributor to NonGuix.

2025-06-12      In Vim, use `:helpg /pattern/` to search the Vim help via grep. Use `:help helpg`
                `:cn` and `:cp` to navigate matches.

2025-06-02      System Crafters is a great community with info about Guix and       <https://systemcrafters.net/>
                Emacs.

2025-06-02      Guix is a better, GNU clone of NixOS configured in Guile Scheme.    <https://guix.gnu.org/>

2025-06-02      Literate programming is a way of documenting high-level code        <https://en.wikipedia.org/wiki/Literate_programming>
                approaches by structuring the code files with prose.

2025-05-30      In Zsh, `$OLDPWD` stores the value of the previous pwd. This is
                hugely useful for moving files around.

2025-05-30      In Zsh, adding a glob to an expression makes the whole expression a
                glob. Make sure you are postfixing `*` if you want to see all
                matches for a that begin with the glob.

2025-05-30      In Vim, use `<C-w>T` to move the current window to a new tab.       `CTRL-W_T`

2025-05-30      In Zsh, use `exec zsh` to totally reload Zsh (including environment <https://batsov.com/articles/2022/09/15/reload-zsh-configuration/>
                variables).

2025-05-30      top is way better than Activity Monitor.                            `man top`

2025-05-21      In Vim, `nrformats+=alpha` must be set to increment/decrement       `:help nrformats` letters with the below two commands.

2025-05-21      In Vim visual modes, use `g<C-x>` to decrement.                     `:help v_g_CTRL-A`

2025-05-10      In Vim visual modes, use `g<C-a>` to increment numbers on all       `:help v_g_CTRL-A`, <https://www.joshmorony.com/totw/28/>
                lines.

2025-05-07      In Vim, use `` `< `` and `` `> `` to go to the beginning and end of `` :help `< ``, ``:help `> ``,
                the previous visual selection.                                      <https://stackoverflow.com/questions/11176159/how-to-jump-to-the-start-or-the-end-of-visual-selection-in-vim>

2025-05-06      In Vim, `<C-r><C-r>register` will paste from a register without     `:help i_CTRL-R_CTRL-R`, <https://vim.fandom.com/wiki/Pasting_registers>
                executing special characters.

2025-05-06      In Vim, you can execute arbitrary edits with                        `:help :g`, <https://learnvim.irian.to/basics/the_global_command>
                `:g/pattern/normal somecommand`.

2025-05-05      In double entry accounting, payments made with credit cards and     <https://www.reddit.com/r/plaintextaccounting/comments/eh9bz7/yet_another_question_about_credit_cards_and/>
                other liabilities are represented as outgoing (negative) values.

2025-05-02      In Zsh use `bindkey -v` to enable Vi mode. (Insert mode is the
                default.

2025-05-01      In Zsh use `setopt extended_glob; yourcmdhere (^negativepattern)`   <https://unix.stackexchange.com/a/541787/727998>
                to apply a command via an exclusion.

2025-04-30      In Vim insert mode, type `<C-v>160` to insert a no-break space.     <https://vimtricks.com/p/vimtrick-non-printable-characters/>

2025-04-30      In Vim, you can set various white space characters and markers with `:help listchars`
                `listchars`.

2025-04-30      In Vim `R` replace mode, type `<C-r>"` to paste yanked contents.    <https://stackoverflow.com/a/25413808/28799158>

2025-04-28      In Vim GREP, `\_.` matches any character *including a newline*.     `:help /\_.`, <https://stackoverflow.com/a/784203/28799158>

2025-04-28      In Vim, use `:%s//~/` to redo the last substitution.                `:help g&`, <https://vi.stackexchange.com/a/18107/54693>

2025-04-28      Pandoc can translate markdown fenced divs to ICML paragraph and     <https://github.com/jgm/pandoc/wiki/Importing-Markdown-in-InDesign>
                character styles.

2025-04-28      Processing manuscripts as XML may dramatically reduce the InDesign  <https://helpx.adobe.com/indesign/using/importing-xml.html>,
                workload.                                                           <https://carijansen.com/indesign-xml-reference-guide/>,
                                                                                    <https://stackoverflow.com/a/66267474/28799158>

2025-04-24      In Vim, `gq{motion}` will format the text. This is                  `:help gq`
                particularly useful for aligning text to a tab stop.

2025-04-23      In Vim `@%` is the register for the current file (absolute path).   `:help quote%`

2025-04-23      In Vim, `:call delete(@%)` deletes the current (but leaves the      `:help delete()`, <https://stackoverflow.com/a/16679182>
                buffer intact.

2025-04-23      In Vim GREP, `\c` makes the selection case insensitive.             `:help /\c`, <https://superuser.com/a/713957>

2025-04-23      In Vim, `_` is the *current line* motion.                           `:help _`, <https://stackoverflow.com/a/47864035/28799158>

2025-04-22      This video explores the importance of                               <https://www.youtube.com/watch?v=bSDprg24pEA>
                experience/familiarity/practice in learning at pace.

2025-04-22      Vim has a built in print feature: `:hardcopy`                       `:help :hardcopy`, <https://stackoverflow.com/a/9693079>

2025-04-22      lpr is a shell service for printing files.                          `man lpr`, <https://superuser.com/a/607380>

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
