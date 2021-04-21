""" Vim-Plug
:call plug#begin('~/.config/nvim')

"" NERDtree
" Plug 'scrooloose/nerdtree'
" Plug 'ryanoasis/vim-devicons'
" Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

""" Highlighting
" Plug 'sheerun/vim-polyglot'
" Plug 'alampros/vim-styled-jsx'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'glepnir/indent-guides.nvim'

""" Status line
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'glepnir/galaxyline.nvim'

""" Colorschemes
Plug 'ayu-theme/ayu-vim'
Plug 'challenger-deep-theme/vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'folke/tokyonight.nvim'
Plug 'franbach/miramare'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'marko-cerovac/material.nvim', { 'branch': 'main' }
Plug 'ray-x/aurora'
Plug 'rhysd/vim-color-spring-night'
Plug 'sainnhe/edge'
Plug 'sainnhe/everforest'
Plug 'sainnhe/gruvbox-material'
Plug 'sainnhe/sonokai'
Plug 'tjdevries/colorbuddy.nvim'
Plug 'vufly/dracula-vim', { 'as': 'dracula' }
Plug 'yonlu/omni.vim'

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
Plug 'windwp/nvim-spectre'

""" Coc.nvim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

""" Nightly
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'
Plug 'kyazdani42/nvim-tree.lua'
Plug 'glepnir/zephyr-nvim'
Plug 'p00f/nvim-ts-rainbow'
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-frecency.nvim'
Plug 'tami5/sql.nvim'
Plug 'lukas-reineke/indent-blankline.nvim', {'branch': 'lua'}

call plug#end()
