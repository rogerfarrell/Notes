---
title: Learning log
---

  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  date         description                                    references
  ------------ ---------------------------------------------- ------------------------------------------------------------------------------------------------------------------
  2025-04-18   In Vim GREP, the `\%V` atom restricts the      `help /\%V`, <https://vim.fandom.com/wiki/Search_and_replace_in_a_visual_selection#Substituting_in_a_visual_selection>
               search to the last visual mode selection.

  2025-04-18   In Vim command mode, use `<Up>` and `<Down>`   `:help c_<Up>`, `:help c_<Down>`
               to scroll through history just like in the 
               shell.

  2025-04-18   In Vim, use `:new` to begin editing a new      `:help :new` 
               file in the pwd.

  2025-04-17   I finally remembered where I bought my         <https://www.fytoo.com/product/FT0969?id=2239>
               favorite round thick-rimmed glasses.

  2025-04-17   Language is provably ambiguous.                <https://youtu.be/rWjUS2h2BfU?si=pITI0xi3Fq0LUz8p>

  2025-04-17   The *royal order of adjectives* is a standard  <https://dictionary.cambridge.org/us/grammar/british-grammar/adjectives-order>,
               order for chaining adjectives in English.

  2025-04-17   ShellCheck is a Haskell shell script           <https://hackage.haskell.org/package/ShellCheck>
               validator.                                     

  2025-04-16   GitHub CLI extension leaves much to be         <https://docs.github.com/en/copilot/using-github-copilot/using-github-copilot-in-the-command-line>
               desired. Currently, it can only process shell  
               commands.                                      

  2025-04-16   API keys are not a part of the ChatGPT Plus    <https://community.openai.com/t/api-access-as-a-chatgpt-plus-subscriber/573409/2>
               subscription. They are served by the OpenAI    
               API platform.                                  

  2025-04-15   InDesign’s GREP supports word boundaries:      <https://www.oreilly.com/library/view/grep-in-indesign/9780596157173/ch04.html>
               `\b`. (It also supports the opening/closing    
               boundaries: `\<` and `\>`.)                    

  2025-04-10   Zenburn is a Vim color scheme used natively    <https://github.com/jnurmine/Zenburn>
               for Pandoc syntax highlighting. It is so good, 
               I am using it in my .vimrc.                    

  2025-04-10   SVG favicons are now a thing.                  <https://css-tricks.com/svg-favicons-and-all-the-fun-things-we-can-do-with-them/>

  2025-04-10   In CSS, use `display: flow-root;` to ensure    <https://www.digitalocean.com/community/tutorials/css-no-more-clearfix-flow-root>
               parent elements min size accounts for floated  
               elements.                                      

  2025-04-09   In Vim insert mode, evaluate expressions       `:help c_CTRL-R_=`, <https://vimtricks.com/p/vim-calculator/>
               (e.g. math) by typing                          
               `<C-R>=yourexpression<CR>`.                    

  2025-04-09   In Vim, open file under the cursor in a new    `:help CTRL-W_f`, <https://vimtricks.com/p/open-file-in-a-split/>
               split with `CTRL-W_f`.                         

  2025-04-09   In Vim, quickly switch to a one-time shell     `:help :shell`
               with `:shell` or `:sh`.                        

  2025-04-09   In Git, use `git reset` to clear local changes <https://stackoverflow.com/a/1146981/28799158>
               since last commit.                             

  2025-04-09   In Vim, use `g&` to repeat last substitution.  `:help g&`, <https://vi.stackexchange.com/a/18107/54693>

  2025-04-09   In Git, safely undo up to a prior commit       <https://stackoverflow.com/a/21718540/28799158>
               without destroying history:                    
               `git revert --no-commit 0d1d7fc3..HEAD`        

  2025-04-08   Pandoc will treat iframes and other plain HTML <https://github.com/jgm/pandoc/issues/2244>
               as code blocks if there are more than four     
               spaces worth of indentation.                   

  2025-04-08   In Vim, delete all but current buffer with     <https://stackoverflow.com/a/34050776/28799158>
               `%bd | e#`                                     

  2025-04-08   Quickly create a PDF with a subset of the      
               pages of another PDF by selecting the pages in 
               the sidebar, right-clicking, and selecting     
               *Extract Pages…*.                              

  2025-04-04   A joke about how deep the rabbit hole goes for <https://people.willamette.edu/~fruehr/haskell/evolution.html>
               solving computer problems.                     

  2025-04-03   The T2 chip on Apple computers can make        <https://wiki.t2linux.org>
               installing Linux difficult.                    

  2025-04-02   Tufte CSS is a CSS styling philosophy derived  <https://edwardtufte.github.io/tufte-css/>
               from Edward Tufte’s books and handouts. (It is 
               very elegant.)                                 

  2025-04-02   `git checkout -b [<name-of-new-branch>]` is a  <https://stackoverflow.com/questions/66882952/how-to-create-new-local-branch-and-switch-between-branches-in-git>
               composition of `git branch` and                
               `git checkout`.                                

  2025-04-02   Pandoc multiline tables best fit my needs for  <https://pandoc.org/MANUAL.html#extension-multiline_tables>
               note taking. NOTE: They still convert to       
               single-line.                                   

  2025-04-02   In Vim, use `:echo expand("%:h")` to show the  `:help :echo`, `:help expand()`
               path of the current file.                      

  2025-04-02   In Vim, `%` refers to the complete file path,  `:help %:h`
               `%:h` gets the head (path minus filename).     

  2025-04-02   In Vim, insert current time insert mode with   <https://superuser.com/questions/451340/how-to-insert-the-date-into-vim>
               `<C-r>=strftime('%F')<CR>`.                    
  ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
