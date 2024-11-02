local map = vim.keymap.set

local opts = {
  noremap = true,
  silent = true,
}

-- Neovim Bindings
-- Map leader
vim.g.mapleader = ' '
-- Bind arrow keys to window adjust. Use hjkl
map('n', '<Up>', ':resize +2<CR>', opts)
map('n', '<Down>', ':resize -2<CR>', opts)
map('n', '<Left>', ':vertical resize +2<CR>', opts)
map('n', '<Right>', ':vertical resize -2<CR>', opts)
-- Lazyvim inspired keymaps
map({ 'n', 'x' }, 'j', "v:count == 0 ? 'gj' : 'j'", { desc = 'Down', expr = true, silent = true })
map({ 'n', 'x' }, '<Down>', "v:count == 0 ? 'gj' : 'j'", { desc = 'Down', expr = true, silent = true })
map({ 'n', 'x' }, 'k', "v:count == 0 ? 'gk' : 'k'", { desc = 'Up', expr = true, silent = true })
map({ 'n', 'x' }, '<Up>', "v:count == 0 ? 'gk' : 'k'", { desc = 'Up', expr = true, silent = true })
-- Clear Search
map('n', '<Leader>/', ':noh<CR>', { desc = 'Clear search highlighting' })
-- New file
map('n', '<leader>fn', '<cmd>enew<cr>')
-- Jump
map('n', '<Leader>c', '^', opts)
map('n', '<Leader>v', '$', opts)
-- Split
map('n', '<C-d>', ':vsplit<CR>') -- Vertical split with Ctrl+d
map('n', '<C-s>', ':split<CR>') -- Horizontal Split with Ctrl+s
map('n', '<C-x>', ':only<CR>')
-- Split navigation using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
-- Navigate buffers fast
map('n', '<S-l>', ':bnext<CR>', opts)
map('n', '<S-h>', ':bprevious<CR>', opts)
-- LSP mappings for definitions, references, and hovering.
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
-- Yank everything
map('n', '<Leader>ya', 'ggVGy', { desc = 'Yank entire file' })
-- Save file
map('n', '<Leader>w', ':w<CR>', { desc = 'Save file' })
-- Quit
map('n', '<Leader>q', ':q<CR>', { desc = 'Quit' })
-- Close buffer
map('n', '<Leader>bd', ':bd<CR>', { desc = 'Close buffer' })
-- Quicker command mode
map('n', ';', ':', { noremap = true })

-- Plugin(s) keymappings
-- Telescope
map('n', '<Leader>ff', '<cmd>Telescope find_files<CR>', opts)
map('n', '<Leader>fh', '<cmd>Telescope oldfiles<CR>', opts)
map('n', '<Leader>fg', '<cmd>Telescope live_grep<CR>', opts)
map('n', '<Leader>fd', '<cmd>Telescope dap commands<CR>', opts)
map('n', '<Leader>fb', '<cmd>Telescope buffers<CR>', opts)
-- Oil
map('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })
-- Fugitive
map('n', '<Leader>g', ':G<CR>', opts)
-- JSON parsing
map('n', '<Leader>jj', ":%!jq '.'<CR>", opts)
-- Compile mode
map('n', '<Leader>ce', ':below Compile<CR>', opts)
