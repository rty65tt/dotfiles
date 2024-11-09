" ***  MAIN SETTINGS *****************************
syntax enable

set mouse=a " Enable mouse in all in all modes
set number
"""set colorcolumn=80
"set cursorline
set relativenumber
set showcmd
set wildmenu  " Отображение полных параметров вкладки командной строки в виде меню
set wildmode=list:longest " Complete only until point of ambiguity
set wrapscan " Searches wrap around end of file
set wildchar=<TAB> " Character for CLI expansion (TAB-completion)
set encoding=utf-8
set laststatus=2 " Always display the statusline in all windows
set showtabline=2 " Always display the tabline, even if there is only one tab

set hlsearch " выделение поисковых запросов по умолчанию
set ignorecase " игнорировать регистр при поиске ...
set smartcase " ... пока вы не ввели заглавную/прописную.
set incsearch " найти следующее совпадение по мере ввода запроса.
set noshowmode " Don't show the current mode -- INSERT 
			   " -- (airline.vim takes care of us) 

set smarttab " At start of line, <Tab> inserts shiftwidth spaces, 
			 "                   <Bs> deletes shiftwidth spaces
set tabstop=4
set shiftwidth=4
"""set softtabstop=4
"""set autoinent
"""set smartindent
"set termguicolors
set confirm
set showmatch           " Show matching brackets.<Paste>
set scrolloff=10
set nobackup            " Отключить резервные копии файлов

" *** PLUGINS ************************************
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
"""Plug 'ryanoasis/vim-devicons'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/tagbar'

""" Color Themes
"""Plug 'dikiaap/minimalist'
"""Plug 'morhetz/gruvbox'
"""Plug 'nlknguyen/papercolor-theme'
"""Plug 'sjl/badwolf'
"""Plug 'junegunn/seoul256.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'

call plug#end()


" *** KEYBINDING *********************************
let mapleader="\<SPACE>"
nmap <Leader>s :%s//g<Left><Left>
nnoremap <Leader>o :CtrlP<CR>         " Open file menu
nnoremap <Leader>b :CtrlPBuffer<CR>   " Open buffer menu
nnoremap <Leader>f :CtrlPMRUFiles<CR> " Open most recently used files

nnoremap <Leader>, :bprev<CR>
nnoremap <Leader>. :bnext<CR>

nnoremap <Leader>[ :tabprev<CR>
nnoremap <Leader>] :tabnext<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <leader>t :NERDTreeToggle<CR><ESC>
map <C-b> :NERDTreeToggle<CR>

nnoremap k kzz
nnoremap j jzz
nnoremap <UP>   kzz
nnoremap <DOWN> jzz
nnoremap G Gzz
nnoremap <PageUP>   <PageUP>zz
nnoremap <PageDOWN> <PageDOWN>zz

nmap <F8> :TagbarOpenAutoClose<CR>

nnoremap <F3> :noh<CR>
nnoremap <F1> :w<CR>

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

cmap w!! w !sudo tee > /dev/null %

:hi Search cterm=NONE ctermfg=black ctermbg=darkyellow

" *** THEME ************************************
"set background=dark
"""colorscheme goodwolf
"""colorscheme peachpuff
"""colorscheme gruvbox
"""colorscheme minimalist
"colorscheme default_mod


" *** AIRLINE SETTINGS ***************************
let g:airline_theme='base16_grayscale'
"""let g:airline_theme='alduin'
"""let g:airline_theme='minimalist'

let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
"""let g:airline#extensions#tabline#left_sep = ' '
"""let g:airline#extensions#tabline#left_alt_sep = '|'

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

"let g:airline_theme= 'gruvbox'
let g:gitgutter_terminal_reports_focus=0

let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" *** KEYMAP FIX *********************************
"set keymap=russian-jcukenwin
"set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯЖ;ABCDEFGHIJKLMNOPQRSTUVWXYZ:,фисвуапршолдьтщзйкыегмцчняж;abcdefghijklmnopqrstuvwxyz;

" *** Extermal Lua Scripts ***********************
" external config files (in lua)
"luafile ~/.config/nvim/lsp.lua



