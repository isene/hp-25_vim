" Vim filetype plugin
" Language:     HP-25
" Version:			0.2
" Maintainer:   Geir Isene
" Last Change:  2012-02-17
" URL:          http://isene.com/

" Only do this when not done yet for this buffer
if (exists("b:did_ftplugin"))
    finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

set nrformats-=octal

map <CR> :call Renumber()<CR>
imap <CR> <CR><C-Y><C-Y><C-Y><SPACE><ESC>0<C-A>:call Renumber()<CR>A

if !exists("*s:Renumber")
    function Renumber()
	let s:linenumber = line(".")
	let s:colnumber = col(".")
	call cursor(2,1)
	let @r = 1
        exe "normal 0cw".printf("%03d", @r)
	2,$s#^\d\d\d#\=printf("%03d", @r + setreg('r', @r+1))#
	call cursor(s:linenumber,s:colnumber)
    endfunction
endif
