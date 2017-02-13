# hp-25_vim
## HP-25: Syntax and filetype plugin

### VIM syntax highlighting for HP-25 program files (\*.25)

The HP-25 syntax highlighting goes well with the HP-25 file type plugin to facilitate easy writing of HP-25 programs in VIM. 

#### Install details
Drop the hp25.vim syntax file into your .vim/syntax/ directory and register the file globally or add to your .vimrc file: 

`autocmd BufRead,BufNewFile *.25 :source ~/.vim/syntax/hp25.vim`

Then all files with the .25 extesion will be highlighted appropriately.

### VIM filetype plugin for HP-25 program files (\*.25)

This ftplugin has the following features: 

Auto-line-numbering: Upon pressing <CR> after a line, the next line has the correct line number. It even renumbers the whole file automatically. So, if you add new lines in the middle of a program, it renumbers the whole file. If you delete a line, just hit Enter to renumber the file (either in Normal or Insert mode) 
#### Install details
Drop the hp25.vim syntax file into your .vim/ftplugin/ directory and register the file globally or add to your .vimrc file: 

`autocmd BufRead,BufNewFile *.25 :source ~/.vim/ftplugin/hp25.vim`

...and you are ready for easy HP-25 program writing.
