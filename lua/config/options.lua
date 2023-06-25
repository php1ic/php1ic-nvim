local opt = vim.opt

opt.nu = true
opt.relativenumber = true
opt.scrolloff = 8

opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true

opt.cursorline = true
opt.hlsearch = false
opt.incsearch = true

opt.termguicolors = true

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.signcolumn = "yes"
opt.colorcolumn = "120"

opt.updatetime = 50
opt.timeoutlen = 300

opt.completeopt = "menu,menuone,noselect"

opt.title = true

