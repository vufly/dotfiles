""" Vim-Plug
:call plug#begin('~/.config/nvim')

"" NERDtree
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

""" Highlighting
" Plug 'sheerun/vim-polyglot'
" Plug 'alampros/vim-styled-jsx'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'glepnir/indent-guides.nvim'

""" Status line
" Plug 'itchyny/lightline.vim'
" Plug 'taohexxx/lightline-buffer'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'glepnir/galaxyline.nvim'

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
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'psliwka/vim-smoothie'
Plug 'mhinz/vim-startify'
Plug 'preservim/nerdcommenter'
Plug 'rmagatti/auto-session'
Plug 'jiangmiao/auto-pairs'
Plug 'f-person/git-blame.nvim'

""" Coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

""" Nightly
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'glepnir/zephyr-nvim'
" Plug 'p00f/nvim-ts-rainbow'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-frecency.nvim'
Plug 'tami5/sql.nvim'

call plug#end()
