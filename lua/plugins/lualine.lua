return {
  -- Change the status bar to something nicer
  'nvim-lualine/lualine.nvim',
  -- config = function()
  -- require('lualine').setup{
  --     options = {
  --         theme = 'OceanicNext',
  --         component_separators = '|',
  --         section_separators = '',
  --     }
  -- }
  -- end

  -- No clue why this doesn't work
  opts = {
    options = {
      theme = 'OceanicNext',
      component_separator = '|',
      section_separator = '',
    }
  },
}
