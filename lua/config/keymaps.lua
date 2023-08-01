vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- No arrow keys allowed ;)
vim.keymap.set("n", "<Up>", "<Nop>")
vim.keymap.set("n", "<Down>", "<Nop>")
vim.keymap.set("n", "<Left>", "<Nop>")
vim.keymap.set("n", "<Right>", "<Nop>")

-- Keep search results centered
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "J", "mzJ`z")

-- Telescope shortcuts
--vim.keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
--vim.keymap.set("n", "<leader>gf", ":Telescope git_files<cr>")

-- LSP shortcuts
vim.keymap.set("n", "<leader>gd", ":lua vim.lsp.buf.definition()<cr>")

-- C++
vim.keymap.set("n", "<leader>gh", "<cmd>ClangdSwitchSourceHeader<cr>")
vim.keymap.set("n", "<leader>th", "<cmd>ClangdToggleInlayHints<cr>")

-- Neogit
-- vim.keymap.set("n", "<leader>gs", ":Neogit<cr>")

-- Should probably move this to a differnt file
-- Neoformat automatically when coding c++
vim.api.nvim_create_autocmd({"BufWritePre"}, {
  pattern = {"*.hpp", "*.cpp"},
  command = "Neoformat",
})

-- Quickfix list navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")


-- No arrow keys allowed ;)
vim.keymap.set("v", "<Up>", "<Nop>")
vim.keymap.set("v", "<Down>", "<Nop>")
vim.keymap.set("v", "<Left>", "<Nop>")
vim.keymap.set("v", "<Right>", "<Nop>")


-- Additional undo breakpoints
vim.keymap.set("i", ",", ",<c-g>u")
vim.keymap.set("i", ".", ".<c-g>u")
vim.keymap.set("i", "!", "!<c-g>u")
vim.keymap.set("i", "?", "?<c-g>u")


-- Nicer window navigation shortcuts
vim.keymap.set("n", "<leader>h", ":wincmd h<cr>", {noremap = false})
vim.keymap.set("n", "<leader>j", ":wincmd j<cr>", {noremap = false})
vim.keymap.set("n", "<leader>k", ":wincmd k<cr>", {noremap = false})
vim.keymap.set("n", "<leader>l", ":wincmd l<cr>", {noremap = false})

