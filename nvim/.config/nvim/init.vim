
call plug#begin('~/.local/share/nvim/plugged')

"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'ctrlpvim/ctrlp.vim' 

Plug 'jiangmiao/auto-pairs'
Plug 'rking/ag.vim'

Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'


Plug 'dikiaap/minimalist'
"Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
"Plug 'vim-syntastic/syntastic'

""" Color Themes
"Plug 'morhetz/gruvbox'
"Plug 'nlknguyen/papercolor-theme'
"Plug 'sjl/badwolf'
"Plug 'junegunn/seoul256.vim'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

call plug#end()



set number
set cursorline
set showcmd
set wildmenu
set wildmode=list:longest " Complete only until point of ambiguity
set wrapscan " Searches wrap around end of file
set wildchar=<TAB> " Character for CLI expansion (TAB-completion)

set encoding=utf-8
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

set hlsearch " Highlight searches
set ignorecase
set incsearch " Highlight dynamically as pattern is typed
set noshowmode " Don't show the current mode (airline.vim takes care of us)
set mouse=a " Enable mouse in all in all modes
set smartcase " Ignore 'ignorecase' if search patter contains uppercase characters
set smarttab " At start of line, <Tab> inserts shiftwidth spaces, <Bs> deletes shiftwidth spaces

set showmatch           " Show matching brackets.<Paste>

let mapleader="\<SPACE>"
nmap <Leader>s :%s//g<Left><Left>
" Open file menu
nnoremap <Leader>o :CtrlP<CR>
" " Open buffer menu
nnoremap <Leader>b :CtrlPBuffer<CR>
" " Open most recently used files
nnoremap <Leader>f :CtrlPMRUFiles<CR>


" Relative numbering
function! NumberToggle()
   if(&relativenumber == 1)
      set nornu
      set number
   else
      set rnu
   endif
endfunc

" Toggle between normal and relative numbering.
nnoremap <leader>r :call NumberToggle()<cr>"



"colorscheme goodwolf
"colorscheme peachpuff
"colorscheme gruvbox
"set background=dark
"colorscheme minimalist
colorscheme default_mod

map <C-b> :NERDTreeToggle<CR>


nnoremap <F3> :noh<CR>
nnoremap <F1> :w<CR>
:hi Search cterm=NONE ctermfg=black ctermbg=darkyellow


cmap w!! w !sudo tee > /dev/null %

let g:airline_theme='base16_grayscale'
"let g:airline_theme='alduin'
"let g:airline_theme='minimalist'

let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif



"let g:airline_theme= 'gruvbox'
let g:gitgutter_terminal_reports_focus=0

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#fnamemod = ':t'


