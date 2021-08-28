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
set completeopt=menuone,noinsert,noselect

set updatetime=300
set timeoutlen=500

set signcolumn=yes
set colorcolumn=120

" call plug#begin('~/.local/share/nvim/site/plugged')
call plug#begin('~/.config/nvim/plugged')

:Plug 'neovim/nvim-lsp'
:Plug 'vim-airline/vim-airline'
:Plug 'vim-airline/vim-airline-themes'
:Plug 'nvim-lua/completion-nvim'
:Plug 'hrsh7th/nvim-cmp'
:Plug 'hrsh7th/cmp-buffer'
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
" Colour schemes
" :Plug 'sainnhe/gruvbox-material'
:Plug 'mhartington/oceanic-next'

call plug#end()

colorscheme OceanicNext
" set background=dark
let g:airline_theme='oceanicnext'
let g:oceanic_next_terninal_bold = 1
let g:oceanic_next_terminal_italic = 1

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

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
nmap <leader>gs :Gstatus<cr>

augroup PHP1IC
    autocmd!
    " Delete trailing white space on save for any file
    autocmd BufWritePre * %s/\s\+$//e
augroup END

lua require'lspconfig'.pyright.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.bashls.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.cmake.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach , cmd = {"/usr/bin/clangd"}}
lua require'cmp'.setup {enabled = true, config = "require('plugin.completion')"}
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }
lua require'todo-comments'.setup{}
lua require'lsp_signature'.setup{}
lua require'gitsigns'.setup{}
lua require'which-key'.setup{}
lua require'nvim-startup'.setup{}
