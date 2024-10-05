return {
  {
    'folke/tokyonight.nvim',
    config = function()
      require('tokyonight').setup {
        styles = { comments = { italic = false }, keywords = { italic = false } },
        lualine_bold = true,
      }
    end,
  },
  {},
}
