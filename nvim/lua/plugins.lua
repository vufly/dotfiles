vim.g.loaded_netrwPlugin = false

-- vim: set foldmethod=marker:
local fn = vim.fn
local execute = vim.api.nvim_command

-- {{{ Auto install packer.nvim if not exists
local install_path = fn.stdpath('data') .. '/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' ..
              install_path)
end

vim.cmd 'packadd packer.nvim'
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua
-- }}}

return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
  use 'wbthomason/packer.nvim'

  -- Colorschemes
  use {'ayu-theme/ayu-vim'}
  use {'challenger-deep-theme/vim'}
  use {'drewtempelmeyer/palenight.vim'}
  use {'folke/tokyonight.nvim'}
  use {'franbach/miramare'}
  use {'kyoz/purify', rtp = 'vim'}
  use {'marko-cerovac/material.nvim', branch = 'main'}
  use {'ray-x/aurora'}
  use {'rhysd/vim-color-spring-night'}
  use {'sainnhe/edge'}
  use {'sainnhe/everforest'}
  use {'sainnhe/gruvbox-material'}
  use {'sainnhe/sonokai'}
  use {'tjdevries/colorbuddy.nvim'}
  use {'yonlu/omni.vim'}
  use {'glepnir/zephyr-nvim'}
  require('colorschemes')

  -- -- TODO refactor all of this (for now it works, but yes I know it could be wrapped in a simpler function)
  -- use {'neovim/nvim-lspconfig', opt = true}
  -- use {'glepnir/lspsaga.nvim', opt = true}
  -- use {'kabouzeid/nvim-lspinstall', opt = true}

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}, {'kyazdani42/nvim-web-devicons'}}
  }
  require('plugins.telescope')

  use {
    'nvim-telescope/telescope-frecency.nvim',
    requires = {{'tami5/sql.nvim'}},
    config = function()
      require('telescope').load_extension('frecency')
    end
  }

  -- -- Debugging
  -- use {'mfussenegger/nvim-dap', opt = true}

  -- -- Autocomplete
  -- use {'hrsh7th/nvim-compe', opt = true}
  -- use {'hrsh7th/vim-vsnip', opt = true}
  -- use {'rafamadriz/friendly-snippets', opt = true}

  -- Treesitter
  use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
  use {'nvim-treesitter/nvim-treesitter-refactor'}
  use {'nvim-treesitter/nvim-treesitter-textobjects'}
  use {'nvim-treesitter/playground'}
  use {'p00f/nvim-ts-rainbow'}
  use {'windwp/nvim-ts-autotag', opt = true}
  require('plugins.nvim-treesitter')

  -- Explorer
  use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons'}}
  require('plugins.nvim-tree')

  -- -- use {'lukas-reineke/indent-blankline.nvim', opt=true, branch = 'lua'}
  use {'lewis6991/gitsigns.nvim', opt = true}
  use {'liuchengxu/vim-which-key', opt = true}
  use {'windwp/nvim-autopairs', opt = true}
  -- use {'terrortylor/nvim-comment', opt = true}

  -- Icons
  use {'kyazdani42/nvim-web-devicons'}
  -- require('plugins.nvim-web-devicons')

  -- Status Line and Bufferline
  use {'glepnir/galaxyline.nvim', opt = true}
  use {'romgrk/barbar.nvim', opt = true}

  -- Time tracking
  use {'wakatime/vim-wakatime'}

  -- Utilities
  use {'djoshea/vim-autoread'} -- Auto refresh file
  use {'airblade/vim-rooter'} -- Auto set root folder
  use {'tpope/vim-surround'} -- Work with surround like bracket
  use {'tpope/vim-fugitive'} -- Work with git
  use {'psliwka/vim-smoothie'} -- Smooth scrolling
  use {'mhinz/vim-startify'} -- Start menu
  use {'preservim/nerdcommenter'} -- Comment/uncomment
  use {'rmagatti/auto-session'} -- Save/load session
  use {'f-person/git-blame.nvim'}
  use {'windwp/nvim-spectre'} -- Nice Find/Replace

  use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}
  require('plugins.indent-blankline')

end)
