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
map('i', 'jk', '<Esc>') -- Map Esc to jk. Wayy faster.
map({ 'i', 'n' }, '<esc>', '<cmd>noh<cr><esc>', { desc = 'Escape and Clear hlsearch' }) -- Clear search highlighting.
-- New file
map('n', '<leader>fn', '<cmd>enew<cr>')
map('n', '<Leader>h', '0', opts)
map('n', '<Leader>l', '$', opts)
-- Split
map('n', '<C-d>', ':vsplit<CR>') -- Vertical split with Ctrl+d
map('n', '<C-s>', ':split<CR>') -- Horizontal Split with Ctrl+s
map('n', '<C-x>', ':only<CR>')
-- Split navigation using Ctrl + {h,j,k,l}
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
-- Delete without yank registering (might be counterintuitive)
map('n', 'd', '"_d', opts)
map('n', 'x', '"_x', opts)
-- Navigate buffers fast
map('n', '<S-l>', ':bnext<CR>', opts)
map('n', '<S-h>', ':bprevious<CR>', opts)
-- LSP mappings for definitions, references, and hovering.
map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)

-- Plugin(s) keymappings
-- Toggle Term
map('n', '<Leader>tt', ':ToggleTerm<CR>', opts) -- Terminal open
-- Neogit
map('n', '<Leader>ng', ':Neogit<CR>', opts) -- Neogit open
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
