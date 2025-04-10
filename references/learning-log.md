# Learning log

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
date            description                                                                                                                 references
-----------     -----------------------------------------------------------------------------------------------------------------------     --------------------------------------------------
2025-04-10      SVG favicons are now a thing.                                                                                               <https://css-tricks.com/svg-favicons-and-all-the-fun-things-we-can-do-with-them/>

2025-04-10      In CSS, use `display: flow-root;` to ensure parent elements min size accounts for floated elements.                         <https://www.digitalocean.com/community/tutorials/css-no-more-clearfix-flow-root>

2025-04-09      In Vim insert mode, evaluate expressions (e.g. math) by typing `<C-R>=yourexpression<CR>`.                                  `:help c_CTRL-R_=`, <https://vimtricks.com/p/vim-calculator/>

2025-04-09      In Vim, open file under the cursor in a new split with `CTRL-W_f`.                                                          `:help CTRL-W_f`, <https://vimtricks.com/p/open-file-in-a-split/>

2025-04-09      In Vim, quickly switch to  a one-time shell with `:shell` or `:sh`.                                                         `:help :shell`

2025-04-09      In Git, use `git reset` to clear local changes since last commit.                                                           <https://stackoverflow.com/a/1146981/28799158>

2025-04-09      In Vim, use `g&` to repeat last substitution.                                                                               `:help g&`, <https://vi.stackexchange.com/a/18107/54693>

2025-04-09      In Git, safely undo up to a prior commit without destroying history: `git revert --no-commit 0d1d7fc3..HEAD`                <https://stackoverflow.com/a/21718540/28799158>

2025-04-08      Pandoc will treat iframes and other plain HTML as code blocks if there are more than four spaces worth of indentation.      <https://github.com/jgm/pandoc/issues/2244>

2025-04-08      In Vim, delete all but current buffer with `%bd | e#`                                                                       <https://stackoverflow.com/a/34050776/28799158>

2025-04-08      Quickly create a PDF with a subset of the pages of another PDF by selecting the pages in the sidebar, right-clicking,
                and selecting *Extract Pages…*.

2025-04-04      A joke about how deep the rabbit hole goes for solving computer problems.                                                   <https://people.willamette.edu/~fruehr/haskell/evolution.html>

2025-04-03      The T2 chip on Apple computers can make installing Linux difficult.                                                         <https://wiki.t2linux.org>

2025-04-02      Tufte CSS is a CSS styling philosophy derived from Edward Tufte's books and handouts. (It is very elegant.)                 <https://edwardtufte.github.io/tufte-css/>

2025-04-02      `git checkout -b [<name-of-new-branch>]` is a composition of `git branch` and `git checkout`.                               <https://stackoverflow.com/questions/66882952/how-to-create-new-local-branch-and-switch-between-branches-in-git>

2025-04-02      Pandoc multiline tables best fit my needs for note taking. NOTE: They still convert to single-line.                         <https://pandoc.org/MANUAL.html#extension-multiline_tables>

2025-04-02      In Vim, use `:echo expand("%:h)` to show the path of the current file.                                                      `:help :echo`, `:help expand()`

2025-04-02      In Vim, `%` refers to the complete file path, `%:h` gets the head (path minus filename).                                    `:help %:h`

2025-04-02      In Vim, insert current time insert mode with `<C-r>=strftime('%F')<CR>`.                                                    <https://superuser.com/questions/451340/how-to-insert-the-date-into-vim>
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
