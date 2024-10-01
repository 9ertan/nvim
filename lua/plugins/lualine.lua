return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local function short_mode()
      local modes = {
        ['n'] = 'N',
        ['i'] = 'I',
        ['v'] = 'V',
        ['V'] = 'VB',
        [''] = 'VB',
        ['r'] = 'R',
        ['s'] = 'S',
        ['c'] = 'C',
        ['t'] = 'T',
      }
      return modes[vim.fn.mode()] or ''
    end
    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = 'tokyonight', -- Choose a theme you like
        component_separators = '',
        section_separators = '',
      },
      sections = {
        lualine_a = { short_mode },
        lualine_b = { 'branch', 'diff' },
        lualine_c = { 'filename' },
        lualine_x = { 'diagnostics' },
        lualine_y = { 'filetype' },
        lualine_z = { 'location' },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {},
      extensions = { 'fugitive' },
    }
  end,
}
