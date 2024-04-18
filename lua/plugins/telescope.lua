return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				config = function()
					require("telescope").load_extension("fzf")
				end,
			},
		},
		keys = {
			{
				"<leader>ff",
				function()
					require("telescope.builtin").find_files()
				end,
				desc = " Telescope [f]ind [f]iles",
			},
			{
				"<leader>gf",
				function()
					require("telescope.builtin").git_files()
				end,
				desc = "Telescope [g]it [f]iles",
			},
			{
				"<leader>pd",
				function()
					require("telescope.builtin").diagnostics()
				end,
				desc = "Telescope [p]roject [d]iagnostics",
			},
			{
				"<leader>ps",
				function()
					require("telescope.builtin").grep_string({
						search = vim.fn.input("Grep > "),
					})
				end,
				desc = "Telescope [p]roject [s]earch",
			},
			{
				"<leader>sg",
				function()
					require("telescope.builtin").live_grep()
				end,
				desc = "Telescope [S]earch with [G]rep",
			},
			{
				"<leader>sh",
				function()
					require("telescope.builtin").help_tags()
				end,
				desc = "Telescope [S]earch [H]elp",
			},
			{
				"<leader>sk",
				function()
					require("telescope.builtin").help_tags()
				end,
				desc = "Telescope [S]earch with [G]rep",
			},
		},
		cmd = "Telescope",
		opts = {
			defaults = {
				layout_config = { prompt_position = "bottom" },
				winblend = 0,
			},
		},
	},
}
