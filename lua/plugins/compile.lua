return {
  'ej-shafran/compile-mode.nvim',
  tag = 'v5.*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    -- if you want to enable coloring of ANSI escape codes in
    -- compilation output, add:
    { 'm00qek/baleia.nvim', tag = 'v1.3.0' },
  },
  config = function()
    vim.g.compile_mode = {
      baleia_setup = true,
    }
  end,
}
