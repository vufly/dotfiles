""" Vim setting
let mapleader = "\<Space>"
map <leader>h :w\|:noh<cr>
filetype plugin on
filetype plugin indent on

" autocmd BufEnter * :set scroll=10
syntax on

set encoding=UTF-8
set mouse=a

" Ignore case sensitive when search
set ignorecase
set incsearch
" Hightlight all the search matches
set hlsearch
set inccommand=nosplit

" set tabstop=2
" set softtabstop=2
" set shiftwidth=2
" set autoindent
" set smartindent
set expandtab

set relativenumber
set nu rnu
set cursorline

"set listchars=space:.,tab:>-
" set list
set listchars=
"set listchars+=tab:▓░
"set listchars+=tab:░\ 
set listchars+=tab:˲\ 
"set listchars+=eol:¬
set listchars+=eol:↩
set listchars+=trail:·
set listchars+=extends:»
set listchars+=precedes:«
set listchars+=nbsp:•

set nowrap
set title

" Always split new windows right
set splitright
set splitbelow
set emoji
set foldlevel=0
" Hide mode in the bottom e.g., -- INSERT --
set noshowmode
" Enable clipboard to copy from system
set clipboard+=unnamedplus

set sessionoptions-=blank
let loaded_netrw = 0

" open help in vertical split
autocmd FileType help wincmd L

"make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

"show color group
command! HiCheck exe 'hi '.synIDattr(synstack(line('.'), col('.'))[-1], 'name')
map <leader><C-h> :exe 'hi '.synIDattr(synstack(line('.'), col('.'))[-1], 'name')<CR>