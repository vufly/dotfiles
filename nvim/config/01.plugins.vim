""" Vim-Plug
:call plug#begin('~/.config/nvim')

""" NERDtree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

""" Highlighting
Plug 'sheerun/vim-polyglot'

""" Status line
Plug 'itchyny/lightline.vim'
Plug 'taohexxx/lightline-buffer'

""" Colorschemes
Plug 'kaicataldo/material.vim', { 'branch': 'main' }
Plug 'ayu-theme/ayu-vim'
Plug 'challenger-deep-theme/vim'
Plug 'sainnhe/sonokai'
Plug 'sainnhe/forest-night'
Plug 'rhysd/vim-color-spring-night'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'franbach/miramare'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/edge'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'vufly/dracula-vim', { 'as': 'dracula' }

""" Productivity
Plug 'wakatime/vim-wakatime'

""" Ultility
Plug 'djoshea/vim-autoread'
Plug 'airblade/vim-rooter'
Plug 'machakann/vim-sandwich'
Plug 'psliwka/vim-smoothie'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdcommenter'

""" Coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()