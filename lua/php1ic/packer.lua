-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Colour scheme
  use 'mhartington/oceanic-next'
  -- Change the status line to something nicer
  use 'nvim-lualine/lualine.nvim'
  -- Show icons in the status bar and telescope window
  -- You will need the icons installed, obviously.
  use 'kyazdani42/nvim-web-devicons'
  -- Never get stuck mid shortcut
  use 'folke/which-key.nvim'

  -- Treesitter for better syntax highlighting
  use {
      'nvim-treesitter/nvim-treesitter',
      run = ":TSUpdate"
  }
  -- Make the treesitter tree viewable for debugging
  use 'nvim-treesitter/playground'

  -- This is neovim so we of source use telescope
  use {
      'nvim-telescope/telescope.nvim',
      requires = {
          {'nvim-lua/plenary.nvim'}
      }
  }

  -- A 'better' search engine
  use {
      'nvim-telescope/telescope-fzf-native.nvim',
      run = "make"
  }

  -- Enable LSP functionality
  use 'neovim/nvim-lsp'
  use 'neovim/nvim-lspconfig'

  -- Show function signatures
  use 'ray-x/lsp_signature.nvim'

  -- Completion with cmp
  use {
      'hrsh7th/nvim-cmp',
      requires = {
          {'hrsh7th/cmp-nvim-lsp'},
          {'hrsh7th/cmp-buffer'},
          {'hrsh7th/cmp-path'},
          {'hrsh7th/cmp-cmdline'}
      }
  }

  -- Snipets with vsnip
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- Easily comment out lines and regions
  use 'numToStr/Comment.nvim'

  -- C++ related packages
  use 'octol/vim-cpp-enhanced-highlight'
  use 'p00f/clangd_extensions.nvim'

  -- Rust related packages
  use 'simrat39/rust-tools.nvim'

  -- Git signs so we can see what been changed
  use 'lewis6991/gitsigns.nvim'

  -- Sticky lines to show context in long scopes
  use 'nvim-treesitter/nvim-treesitter-context'
end)
