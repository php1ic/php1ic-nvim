return {
  {
    'nvim-telescope/telescope.nvim',
    dependencies =
      {
        {'nvim-lua/plenary.nvim'},
        {
          'nvim-telescope/telescope-fzf-native.nvim',
          build = "make",
          config = function()
            require('telescope').load_extension("fzf")
          end,
        }
      },
    keys = {
      {
        "<leader>ff",
        function() require("telescope.builtin").find_files() end,
        desc = ""
      },

      {
        "<leader>gf",
        function() require("telescope.builtin").git_files() end,
        desc = ""
      },

      {
        "<leader>ps",
        function() require("telescope.builtin").grep_string({
          search = vim.fn.input("Grep > ")
        })
        end,
        desc = ""
      },
    },
    cmd = "Telescope",
    opts = {
      defaults = {
        layout_config = { prompt_position = "bottom" },
        winblend = 0,
      }
    }
  }
}
