local ts = require('telescope.builtin')
local opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<leader>q", ":q<CR>", opts)          -- Neovim: Exit file
vim.api.nvim_set_keymap("n", "<leader>Q", ":q!<CR>", opts)         -- Neovim: Exit without saving
vim.api.nvim_set_keymap("n", "<C-s>", ":w<CR>", opts)              -- Neovim: Save file
vim.api.nvim_set_keymap("i", "jk", "<Esc>", opts)                  -- Neovim: Exit insert mode
vim.api.nvim_set_keymap('n', '<leader>h', '<C-w>h', opts)          -- Neovim: Jump to left window
vim.api.nvim_set_keymap('n', '<leader>l', '<C-w>l', opts)          -- Neovim: Jump to right window
vim.api.nvim_set_keymap('n', '<leader>k', '<C-w>k', opts)          -- Neovim: Jump to top window
vim.api.nvim_set_keymap('n', '<leader>j', '<C-w>j', opts)          -- Neovim: Jump to bottom window
vim.api.nvim_set_keymap('n', '<leader>e', '$', opts)               -- Neovim: Jump to start of line
vim.api.nvim_set_keymap('n', '<leader>s', '0', opts)               -- Neovim: Jump to end of line
vim.api.nvim_set_keymap('n', '<leader>b', 'G', opts)               -- Neovim: Jump to top of file
vim.api.nvim_set_keymap('n', '<leader>t', 'gg', opts)              -- Neovim: Jump to bottom of file
vim.api.nvim_set_keymap('n', '<leader>p', '"+p', opts)             -- Neovim: Paste clipboard

vim.keymap.set('n', '<leader>ff', ts.find_files, opts)             -- Telescope: File Search
vim.keymap.set('n', '<leader>fg', ts.live_grep, opts)              -- Telescope: Text search using regex
vim.keymap.set('n', '<leader>fb', ts.buffers, opts)                -- Telescope: Search current buffer
vim.keymap.set('n', '<leader>fh', ts.help_tags, opts)              -- Telescope: Search help tags
vim.keymap.set('n', '<leader>fd', ts.lsp_definitions, opts)        -- Telescope: Find definition
vim.keymap.set('n', '<leader>fr', ts.lsp_references, opts)         -- Telescope: Find references
vim.keymap.set('n', '<leader>fe', ts.diagnostics, opts)            -- Telescope: Diagnostics

vim.keymap.set('n', 'ch', vim.lsp.buf.hover, opts)                 -- Code hover
vim.keymap.set('n', 'cr', vim.lsp.buf.rename, opts)                -- Code rename
vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, opts)           -- Code action

vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", opts) -- Tree: Opens File Tree
