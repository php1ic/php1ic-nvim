return {
  -- All your LSP needs in a single place
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies =
      {
        -- LSP Support
        -- Required
        {'neovim/nvim-lspconfig'},
        -- Optional
        {
          'williamboman/mason.nvim',
          build = function()
            pcall(vim.cmd, "MasonUpdate")
          end,
        },
        -- Optional
        {'williamboman/mason-lspconfig.nvim'},

        -- Autocompletion
        -- Required
        {'hrsh7th/nvim-cmp'},
        {'hrsh7th/cmp-nvim-lsp'},
        {'L3MON4D3/LuaSnip'},
        -- Optional
        {'hrsh7th/cmp-buffer'},
        {'hrsh7th/cmp-path'},
        {'hrsh7th/cmp-cmdline'},
      },
    opts = function()
      local lsp = require('lsp-zero').preset({})

      lsp.ensure_installed({
        'clangd',
        'rust_analyzer',
        'pylsp',
        'cmake',
        'bashls',
        'lua_ls',
        'gopls'
      })

      lsp.on_attach(function(_, bufnr)
        lsp.default_keymaps({buffer = bufnr})
      end)

      lsp.setup()
    end,
  },
  -- More LSP stuff
  'neovim/nvim-lsp',
  'onsails/lspkind.nvim',
  -- Show function signatures
  'ray-x/lsp_signature.nvim',
}
