return {
  'hrsh7th/nvim-cmp',
  event = "InsertEnter",
  opts = function()
    -- Set up nvim-cmp.
    local cmp = require('cmp')

    local ok, lspkind = pcall(require, "lspkind")
    if not ok then
      return
    end

    lspkind.init()

    cmp.setup({
      snippet = {
        -- REQUIRED - you must specify a snippet engine
        expand = function(args)
          require('luasnip').lsp_expand(args.body)
        end,
      },

      window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
      },

      mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
      }),

      ["<tab>"] = cmp.config.disable,

      sources = cmp.config.sources({
        { name = "nvim_lua" },
        { name = 'nvim_lsp' },
        { name = "path" },
        { name = 'luasnip' },
        { name = 'buffer', keyword_length = 5 },
      }),

      formatting = {
        format = lspkind.cmp_format {
          with_text = true,
          menu = {
            buffer = "[buf]",
            nvim_lsp = "[LSP]",
            nvim_lua = "[api]",
            path = "[path]",
            luasnip = "[snip]",
          }
        }
      }
    })

    -- Set configuration for specific filetype.
    cmp.setup.filetype('gitcommit', {
      sources = cmp.config.sources({
        { name = 'cmp_git' },
      }, {
          { name = 'buffer' },
        })
    })

    -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline('/', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = 'buffer' }
      }
    })

    -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
    cmp.setup.cmdline(':', {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = 'path' }
      }, {
          { name = 'cmdline' }
        })
    })
  end,
}
