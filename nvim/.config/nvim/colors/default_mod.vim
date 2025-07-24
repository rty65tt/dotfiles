" Vim color file
" Maintainer:	u1 <no@null.org>
" Last Change:	2017 Jul 25

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

let colors_name = "default_mod"


hi LineNr ctermfg=8


hi CursorLine ctermbg=0
hi CursorLineNr ctermbg=0
hi CursorColumn ctermbg =0
hi CursorLine cterm=NONE
hi CursorLineNr cterm=NONE

hi IncSearch guifg=#5a72d7 guibg=#000000 gui=standout cterm=reverse
hi Search guifg=#dd7700 guibg=#000000 gui=reverse cterm=reverse
hi! link CurSearch IncSearch

" vim: sw=2
