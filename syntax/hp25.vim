" Vim syntax file
" Language:	HP-25
" Version:	0.2
" Maintainer:	Geir Isene
" Last Change:	2017-02-13
" Filenames:    *.25
" URL:		http://isene.com/

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

syntax match  hp25LineNumber	"^ *[0-9]*"
syntax match  hp25Cond		" [A-Z<>=0-9].\{-}?[A-Z0-9]\{-}\( \|$\)"
syntax match  hp25f		"f [0-9A-Za-z<>!=\-+]*"
syntax match  hp25g		"g [0-9A-Za-z<>!=\-+]*"
syntax match  hp25GTO		"GTO.*"
syntax match  hp25Lbl		"Lbl \d\d"
syntax match  hp25num		"\t\d"

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_crontab_syn_inits")
  if version < 508
    let did_crontab_syn_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  HiLink hp25LineNumber		Number
  HiLink hp25f			Statement
  HiLink hp25g			Function
  HiLink hp25GTO		Structure
  HiLink hp25Lbl		Structure
  HiLink hp25num		Define
  HiLink hp25Cond		Comment

  delcommand HiLink
endif

let b:current_syntax = "hp25"

" vim: ts=8
