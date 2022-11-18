local nnoremap = require("php1ic.keymap").nnoremap

-- No arrow keys allowed ;)
nnoremap("<Up>", "<Nop>")
nnoremap("<Down>", "<Nop>")
nnoremap("<Left>", "<Nop>")
nnoremap("<Right>", "<Nop>")

-- Keep search results centered
nnoremap("n", "nzzzv")
nnoremap("N", "Nzzzv")
nnoremap("J", "mzJ`z")

-- Telescope shortcuts
nnoremap("<leader>ff", ":Telescope find_files<cr>")
nnoremap("<leader>gf", ":Telescope git_files<cr>")

-- LSP shortcuts
nnoremap("<leader>gd", ":lua vim.lsp.buf.definition()<cr>")

-- Neogit
nnoremap("<leader>gs", ":Neogit<cr>")


local vnoremap = require("php1ic.keymap").vnoremap

-- No arrow keys allowed ;)
vnoremap("<Up>", "<Nop>")
vnoremap("<Down>", "<Nop>")
vnoremap("<Left>", "<Nop>")
vnoremap("<Right>", "<Nop>")


local inoremap = require("php1ic.keymap").inoremap

-- Additional undo breakpoints
inoremap(",", ",<c-g>u")
inoremap(".", ".<c-g>u")
inoremap("!", "!<c-g>u")
inoremap("?", "?<c-g>u")


local nmap = require("php1ic.keymap").nmap

-- Nicer window navigation shortcuts
nmap("<leader>h", ":wincmd h<cr>")
nmap("<leader>j", ":wincmd j<cr>")
nmap("<leader>k", ":wincmd k<cr>")
nmap("<leader>l", ":wincmd l<cr>")

