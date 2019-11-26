""" Vim-Plug
call plug#begin()

""" NERDtree
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'

call plug#end()

""" Vim setting
"let mapleader = "\<Space>"
filetype plugin on
filetype plugin indent on

autocmd BufEnter * :set scroll=10
syntax on

set encoding=UTF-8
set mouse=a

set incsearch 
set hlsearch 

set tabstop=2
set softtabstop=0
set shiftwidth=2

""" Plugin setting
syntax enable
set background=dark
highlight Normal ctermbg=None
"colorscheme gruvbox
let g:airline_theme='gruvbox'
"set termguicolors
set guifont=Dank\ Mono:h14