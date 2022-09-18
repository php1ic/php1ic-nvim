-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'mhartington/oceanic-next'
  use 'nvim-lualine/lualine.nvim'
  use 'folke/which-key.nvim'

  use {
      'nvim-treesitter/nvim-treesitter',
      run = ":TSUpdate"
  }
  use 'nvim-treesitter/playground'

  use {
      'nvim-telescope/telescope.nvim',
      requires = {
          {'nvim-lua/plenary.nvim'}
      }
  }

  use {
      'nvim-telescope/telescope-fzf-native.nvim',
      run = "make"
  }

  use 'neovim/nvim-lsp'
  use 'neovim/nvim-lspconfig'

  use {
      'hrsh7th/nvim-cmp',
      requires = {
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'hrsh7th/cmp-cmdline'}
      }
  }

  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  use 'kyazdani42/nvim-web-devicons'
end)
