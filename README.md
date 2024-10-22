## Keymapping cheat sheet, generated using a llm.

| Mode      | Key Mapping         | Command / Description                              |
|-----------|---------------------|---------------------------------------------------|
| Normal    | `<Up>`              | `:resize +2<CR>`                                  |
| Normal    | `<Down>`            | `:resize -2<CR>`                                  |
| Normal    | `<Left>`            | `:vertical resize +2<CR>`                         |
| Normal    | `<Right>`           | `:vertical resize -2<CR>`                         |
| Normal/X  | `j`                 | Down (with count: `gj` if count is 0)             |
| Normal/X  | `<Down>`            | Down (with count: `gj` if count is 0)             |
| Normal/X  | `k`                 | Up (with count: `gk` if count is 0)               |
| Normal/X  | `<Up>`              | Up (with count: `gk` if count is 0)               |
| Normal    | `<Leader>/`         | `:noh<CR>` (Clear search highlighting)             |
| Normal    | `<leader>fn`       | `<cmd>enew<cr>` (New file)                        |
| Normal    | `<Leader>c`         | `^` (Jump to the beginning of the line)           |
| Normal    | `<Leader>v`         | `$` (Jump to the end of the line)                 |
| Normal    | `<C-d>`             | `:vsplit<CR>` (Vertical split)                    |
| Normal    | `<C-s>`             | `:split<CR>` (Horizontal split)                   |
| Normal    | `<C-x>`             | `:only<CR>` (Close other splits)                  |
| Normal    | `<C-h>`             | `<C-w>h` (Move to left window)                    |
| Normal    | `<C-j>`             | `<C-w>j` (Move to below window)                   |
| Normal    | `<C-k>`             | `<C-w>k` (Move to above window)                   |
| Normal    | `<C-l>`             | `<C-w>l` (Move to right window)                   |
| Normal    | `<S-l>`             | `:bnext<CR>` (Next buffer)                        |
| Normal    | `<S-h>`             | `:bprevious<CR>` (Previous buffer)                |
| Normal    | `gr`                | `<cmd>lua vim.lsp.buf.references()<CR>` (References) |
| Normal    | `K`                 | `<cmd>lua vim.lsp.buf.hover()<CR>` (Hover)       |
| Normal    | `gd`                | `<cmd>lua vim.lsp.buf.definition()<CR>` (Definition) |
| Normal    | `<Leader>ya`        | `ggVGy` (Yank entire file)                        |
| Normal    | `<Leader>w`         | `:w<CR>` (Save file)                             |
| Normal    | `<Leader>q`         | `:q<CR>` (Quit)                                   |
| Normal    | `<Leader>bd`        | `:bd<CR>` (Close buffer)                          |
| Normal    | `;`                 | `:` (Quicker command mode)                        |
| Normal    | `<Leader>ff`        | `<cmd>Telescope find_files<CR>`                   |
| Normal    | `<Leader>fh`        | `<cmd>Telescope oldfiles<CR>`                      |
| Normal    | `<Leader>fg`        | `<cmd>Telescope live_grep<CR>`                     |
| Normal    | `<Leader>fd`        | `<cmd>Telescope dap commands<CR>`                  |
| Normal    | `<Leader>fb`        | `<cmd>Telescope buffers<CR>`                        |
| Normal    | `-`                 | `<CMD>Oil<CR>` (Open parent directory)            |
| Normal    | `<Leader>g`         | `:G<CR>` (Open Fugitive)                            |
