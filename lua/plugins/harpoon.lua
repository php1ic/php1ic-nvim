return {
    'theprimeagen/harpoon',
    keys = {
        {"<leader>a", "<cmd>lua require('harpoon.mark').add_file()<CR>", desc = "Mark file with harpoon"},
        {"<C-e>", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>", desc = "Show marks list"},

        {"C-h", function() require('harpoon.ui').nav_file(1) end },
        {"C-j", function() require('harpoon.ui').nav_file(2) end },
        {"C-k", function() require('harpoon.ui').nav_file(3) end },
        {"C-l", function() require('harpoon.ui').nav_file(4) end },
    },
}
