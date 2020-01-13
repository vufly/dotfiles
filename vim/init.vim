""" Vim-Plug
call plug#begin()

""" NERDtree
Plug 'scrooloose/nerdtree'
Plug 'morhetz/gruvbox'
Plug 'altercation/vim-colors-solarized'
Plug 'artanikin/vim-synthwave84'
Plug 'ayu-theme/ayu-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'sainnhe/gruvbox-material'
Plug 'sheerun/vim-polyglot'

"Plug 'chemzqm/vim-jsx-improve'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
set termguicolors
"highlight Normal ctermbg=None"
"colorscheme gruvbox
colorscheme gruvbox-material
let ayucolor="mirage"
"colorscheme ayu
let g:nord_cursor_line_number_background = 1
let g:nord_italic = 1
let g:nord_italic_comments = 1
let g:nord_underline = 1

"colorscheme nord
let g:airline_theme='nord'
set guifont=Dank\ Mono:h14

highlight Comment cterm=italic gui=italic
"highlight jsThis cterm=italic gui=italic
"highlight jsxAttrib cterm=italic gui=italic ctermbg=NONE ctermfg=NONE
