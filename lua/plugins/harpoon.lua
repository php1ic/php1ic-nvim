return {
    'theprimeagen/harpoon',
    -- keys = {
    --     {"<leader>a", mark.add_file},
        -- {"<C-e>", ui.toggle_quick_menu},

        -- {"C-h", function() ui.nav_file(1) end },
        -- {"C-j", function() ui.nav_file(2) end },
        -- {"C-k", function() ui.nav_file(3) end },
        -- {"C-l", function() ui.nav_file(4) end },

    -- }
    config = function()
        local mark = require('harpoon.mark')
        local ui = require('harpoon.ui')

        vim.keymap.set("n", "<leader>a", mark.add_file)
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

        vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)
    end
}
