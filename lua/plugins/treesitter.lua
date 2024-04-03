return {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    event = {"BufReadPost", "BufNewFile"},
    opts = {
      highlight = { enable = true },
      indent = { enable = true, disable = {"python"} },
      context_commentstring = { enable = true, enable_autocmd = false },
      -- A list of parser names 
      ensure_installed = {
        "bash",
        "c",
        "cpp",
        "cmake",
        "gitignore",
        "go",
        "lua",
        "python",
        "rust",
        "vim",
        "vimdoc"},

      playground = {
        enable = true,
        disable = {},
      }
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)
    end,
  },

  { 'nvim-treesitter/playground', cmd = "TSPlaygroundToggle" },

  {
    'nvim-treesitter/nvim-treesitter-context',
    event = "BufReadPre",
    config = true,
    opts = {
      max_lines = 1
    }
  },

}
