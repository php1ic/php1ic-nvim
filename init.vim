set number relativenumber
set tabstop=4 softtabstop=4
set mouse=a
set shiftwidth=4
set expandtab
set hidden
set smartindent
set cursorline
set nohlsearch
set incsearch
set scrolloff=8
set termguicolors
set completeopt=menuone,noselect,menu

set updatetime=300
set timeoutlen=500

set signcolumn=yes
set colorcolumn=120

" call plug#begin('~/.local/share/nvim/site/plugged')
call plug#begin('~/.config/nvim/plugged')

:Plug 'neovim/nvim-lsp'
:Plug 'neovim/nvim-lspconfig'

:Plug 'hrsh7th/nvim-cmp'
:Plug 'hrsh7th/cmp-buffer'
:Plug 'hrsh7th/cmp-path'
:Plug 'hrsh7th/cmp-nvim-lsp'
:Plug 'hrsh7th/cmp-vsnip'
:Plug 'hrsh7th/vim-vsnip'
:Plug 'nvim-lualine/lualine.nvim'
:Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
:Plug 'nvim-treesitter/playground'
:Plug 'nvim-lua/popup.nvim'
:Plug 'nvim-lua/plenary.nvim'
:Plug 'nvim-telescope/telescope.nvim'
:Plug 'nvim-telescope/telescope-fzy-native.nvim', { 'do': 'make' }
:Plug 'octol/vim-cpp-enhanced-highlight'
:Plug 'sbdchd/neoformat'
:Plug 'tpope/vim-fugitive'
:Plug 'mhinz/vim-signify'
:Plug 'folke/which-key.nvim'
:Plug 'folke/todo-comments.nvim'
:Plug 'ray-x/lsp_signature.nvim'
:Plug 'lewis6991/gitsigns.nvim'
:Plug 'henriquehbr/nvim-startup.lua'
:Plug 'abecodes/tabout.nvim'
:Plug 'kyazdani42/nvim-web-devicons'
:Plug 'numToStr/Comment.nvim'

" Colour schemes
" :Plug 'sainnhe/gruvbox-material'
:Plug 'mhartington/oceanic-next'

call plug#end()

colorscheme OceanicNext
let g:oceanic_next_terninal_bold = 1
let g:oceanic_next_terminal_italic = 1

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

" I still drift over to the arrow keys. Turn them off
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Copy to end of line
nnoremap Y y$

" Keep search result centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Additional undo breakpoints
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

let mapleader = " "

" Simpler split window navigation
nmap <leader>h :wincmd h<cr>
nmap <leader>j :wincmd j<cr>
nmap <leader>k :wincmd k<cr>
nmap <leader>l :wincmd l<cr>

" Telescope shortcuts
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep for > ")})<cr>
" LSP shortcuts
nnoremap <leader>gd :lua vim.lsp.buf.definition()<cr>
nnoremap <leader>gi :lua vim.lsp.buf.implementation()<cr>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<cr>
nnoremap <leader>grr :lua vim.lsp.buf.references()<cr>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<cr>
nnoremap <leader>gh :lua vim.lsp.buf.hover()<cr>
nnoremap <leader>gca :lua vim.lsp.buf.code_action()<cr>
nnoremap <leader>gsd :lua vim.lsp.util.show_line_diagnostics(); vim.lsp.util.show_line_diagnostics()<cr>
nnoremap <leader>gn :lua vim.lsp.diagnostic.goto_next()<cr>
" Git/Fugitive shortcuts
" nmap <leader>gs :Gstatus<cr>

augroup PHP1IC
    autocmd!
    " Delete trailing white space on save for any file
    autocmd BufWritePre * %s/\s\+$//e
augroup END

" Lifted straight from the nvim-cmp github README
lua <<EOF
  -- Setup nvim-cmp.
  local cmp = require'cmp'

  cmp.setup({
    snippet = {
      -- REQUIRED - you must specify a snippet engine
      expand = function(args)
        vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
        -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
        -- require'snippy'.expand_snippet(args.body) -- For `snippy` users.
      end,
    },
    mapping = {
      ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
      ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
      ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
      ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
      ['<C-e>'] = cmp.mapping({
        i = cmp.mapping.abort(),
        c = cmp.mapping.close(),
      }),
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  -- cmp.setup.cmdline(':', {
  --   sources = cmp.config.sources({
  --     { name = 'path' }
  --   }, {
  --     { name = 'cmdline' }
  --   })
  -- })

  -- Setup lspconfig.
  local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
  -- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
  require('lspconfig')['clangd'].setup {capabilities = capabilities}
  require('lspconfig')['pyright'].setup {capabilities = capabilities}
  require('lspconfig')['bashls'].setup {capabilities = capabilities}
  require('lspconfig')['cmake'].setup {capabilities = capabilities}
EOF

" lua require'lspconfig'.clangd.setup{require'cmp_nvim_lsp'.update_capabilities(vim.lsp.protocol.make_client_capabilities())}
" lua require'lspconfig'.pyright.setup{}
" lua require'lspconfig'.bashls.setup{ on_attach=require'completion'.on_attach }
" lua require'lspconfig'.cmake.setup{ on_attach=require'completion'.on_attach }
" lua require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach , cmd = {"/usr/bin/clangd"}}
" lua require'cmp'.setup {enabled = true, config = "require('plugin.completion')"}
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
lua require'todo-comments'.setup{}
lua require'lsp_signature'.setup()
lua require'gitsigns'.setup{}
lua require'which-key'.setup{}
lua require'nvim-startup'.setup{}
lua require'nvim-web-devicons'.setup{}
lua require'lualine'.setup{options = {theme = 'OceanicNext'}}
" Tabout doesn't seem to work, probably an issue with this config
lua require'tabout'.setup{tabkey = '<Tab>', backwards_tabkey = '<S-Tab>'}
lua require'Comment'.setup{}
