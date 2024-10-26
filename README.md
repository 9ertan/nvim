## Keymap cheat sheet, generated using an llm.
| Key               | Mode | Action                                    | Description                                        |
|-------------------|------|-------------------------------------------|----------------------------------------------------|
| `<Space>`         | N    | Leader key                                | Used as a prefix for many custom commands          |
| `<Up>`            | N    | Resize window +2 vertically               | Increase height of current window                  |
| `<Down>`          | N    | Resize window -2 vertically               | Decrease height of current window                  |
| `<Left>`          | N    | Resize window +2 horizontally             | Increase width of current window                   |
| `<Right>`         | N    | Resize window -2 horizontally             | Decrease width of current window                   |
| `j`               | N, X | Move down (with wrap)                     | Move cursor down, respecting soft wraps            |
| `k`               | N, X | Move up (with wrap)                       | Move cursor up, respecting soft wraps              |
| `<Leader>/`       | N    | Clear search highlighting                 | Remove highlights from previous search             |
| `<Leader>fn`      | N    | New file                                  | Create a new empty buffer                          |
| `<Leader>c`       | N    | Jump to start of line                     | Move cursor to first non-blank character of line   |
| `<Leader>v`       | N    | Jump to end of line                       | Move cursor to last character of line              |
| `<C-d>`           | N    | Vertical split                            | Split window vertically                            |
| `<C-s>`           | N    | Horizontal split                          | Split window horizontally                          |
| `<C-x>`           | N    | Close all splits except current           | Focus on current split, closing others             |
| `<C-h>`           | N    | Move to left split                        | Navigate to the split on the left                  |
| `<C-j>`           | N    | Move to bottom split                      | Navigate to the split below                        |
| `<C-k>`           | N    | Move to top split                         | Navigate to the split above                        |
| `<C-l>`           | N    | Move to right split                       | Navigate to the split on the right                 |
| `<S-l>`           | N    | Next buffer                               | Switch to the next buffer in the list              |
| `<S-h>`           | N    | Previous buffer                           | Switch to the previous buffer in the list          |
| `gr`              | N    | Show references                           | Display all references to symbol under cursor      |
| `K`               | N    | Show hover information                    | Display information about symbol under cursor      |
| `gd`              | N    | Go to definition                          | Jump to the definition of symbol under cursor      |
| `<Leader>ya`      | N    | Yank entire file                          | Copy entire file content to clipboard              |
| `<Leader>w`       | N    | Save file                                 | Write current buffer to file                       |
| `<Leader>q`       | N    | Quit                                      | Close current window                               |
| `<Leader>bd`      | N    | Close buffer                              | Close current buffer                               |
| `;`               | N    | Enter command mode                        | Quick way to enter command mode                    |
| `<Leader>ff`      | N    | Telescope: Find files                     | Open Telescope file finder                         |
| `<Leader>fh`      | N    | Telescope: Recent files                   | Show recently opened files in Telescope            |
| `<Leader>fg`      | N    | Telescope: Live grep                      | Search for a string in your project                |
| `<Leader>fd`      | N    | Telescope: DAP commands                   | Show Debug Adapter Protocol commands               |
| `<Leader>fb`      | N    | Telescope: Buffers                        | List and switch between open buffers               |
| `-`               | N    | Oil: Open parent directory                | Navigate to parent directory using Oil             |
| `<Leader>g`       | N    | Fugitive: Open Git status                 | Open Fugitive git status window                    |
| `<C-Space>`       | I    | cmp: Complete                             | Trigger completion menu                            |
| `<C-e>`           | I    | cmp: Abort                                | Close completion menu                              |
| `<Tab>`           | I, S | cmp: Next item or expand snippet          | Select next completion item or expand snippet      |
| `<C-b>`           | I    | cmp: Scroll docs up                       | Scroll up in completion documentation              |
| `<C-f>`           | I    | cmp: Scroll docs down                     | Scroll down in completion documentation            |
| `<C-n>`           | I    | cmp: Select next item                     | Move to next item in completion menu               |
| `<C-p>`           | I    | cmp: Select previous item                 | Move to previous item in completion menu           |
| `<C-l>`           | I    | cmp: Confirm selection                    | Confirm and insert selected completion item        |
