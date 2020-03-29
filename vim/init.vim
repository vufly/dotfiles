""" Vim-Plug
call plug#begin()

""" NERDtree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'kaicataldo/material.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'wakatime/vim-wakatime'

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

set number


""" Plugin setting
syntax enable
set background=dark
set termguicolors

let g:material_theme_style = 'palenight'
let g:material_terminal_italics = 1

augroup MyColors
	autocmd!
	"autocmd ColorScheme * highlight jsExport gui=italic cterm=italic
	autocmd ColorScheme * highlight jsExportDefault gui=italic cterm=italic guifg=#89ddff
	autocmd ColorScheme * highlight LineNr guifg=#cleared
augroup END
colorscheme material

let g:airline_theme = 'material_vim'
let g:lightline = { 'colorscheme': 'material_vim' }

