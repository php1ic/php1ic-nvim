return {
    -- Git interface
    'TimUntersberger/neogit',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },
    keys = {
        {"<leader>gs", ":Neogit<CR>", desc = "Git Status"},
    },
    opts = {
        disable_commit_confirmation = true
    },
}
