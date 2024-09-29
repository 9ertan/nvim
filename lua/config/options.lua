-- :options
local options = {
  mouse = '', -- Disable mouse support
  number = true, -- Enable number line
  relativenumber = true, -- Enable relative numbers
  termguicolors = true, -- Enable 24-bit RGB color
  cursorline = true, -- Enable cursorline
  swapfile = false, -- Disable swapfile
  clipboard = 'unnamedplus', -- System-wide yanking
  undofile = true, -- Enable persistent undo (allows you to undo changes to a file after even closing it and reopening)
  ignorecase = true, -- Ignore casing in search patterns
  smartindent = true, -- Smart autoindenting
  expandtab = true, -- Smart tabbing in insert mode
  shiftwidth = 2, -- Number of spaces used
  tabstop = 2, -- Number of spaces a Tab in the text stands for
  lazyredraw = true, -- Faster scrolling
  updatetime = 300, -- Faster completion
  guicursor = 'n-v-i-c:block-Cursor', -- Block cursor in all modes
  wrap = false,
  hidden = true,
  conceallevel = 1,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

-- Disable neovim intro
vim.opt.shortmess:append 'sI'
