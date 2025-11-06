local opts = { noremap = true, silent = true }

-- Window navigation --
--
-- Jump to left window
vim.keymap.set("n", "<leader>h", "<C-w>h", opts)
-- Jump to right window
vim.keymap.set("n", "<leader>l", "<C-w>l", opts)
-- Jump to top window
vim.keymap.set("n", "<leader>k", "<C-w>k", opts)
-- Jump to bottom window
vim.keymap.set("n", "<leader>j", "<C-w>j", opts)

-- File navigation --
--
-- Jump to start of line
vim.keymap.set("n", "<leader>e", "$", opts)
-- Jump to end of line
vim.keymap.set("n", "<leader>s", "0", opts)
-- Jump to top of file
vim.keymap.set("n", "<leader>b", "G", opts)
-- Jump to bottom of file
vim.keymap.set("n", "<leader>t", "gg", opts)

-- Deleting content
--
-- Delete from cursor to start of line
vim.keymap.set("n", "<leader>de", "d$", opts)
-- Delete from cursor to end of line
vim.keymap.set("n", "<leader>ds", "d0", opts)
-- Delete from cursor to top of file
vim.keymap.set("n", "<leader>db", "dG", opts)
-- Delete from cursor to bottom of file
vim.keymap.set("n", "<leader>dt", "dgg", opts)

-- Telescope plugin
--
local ts = require("telescope.builtin")
-- Find files in the workspace
vim.keymap.set("n", "<leader>ff", ts.find_files, opts)
-- Search for text in files using live grep
vim.keymap.set("n", "<leader>fg", ts.live_grep, opts)
-- List open buffers
vim.keymap.set("n", "<leader>fb", ts.buffers, opts)
-- Search help tags
vim.keymap.set("n", "<leader>fh", ts.help_tags, opts)
-- Jump to LSP definitions
vim.keymap.set("n", "<leader>fd", ts.lsp_definitions, opts)
-- Find LSP references to symbol under cursor
vim.keymap.set("n", "<leader>fr", ts.lsp_references, opts)
-- Show LSP diagnostics in Telescope
vim.keymap.set("n", "<leader>fe", ts.diagnostics, opts)

-- LSP code actions
--
-- Show hover documentation for symbol under cursor
vim.keymap.set("n", "ch", vim.lsp.buf.hover, opts)
-- Rename symbol under cursor
vim.keymap.set("n", "cr", vim.lsp.buf.rename, opts)
-- Show available code actions at cursor
vim.keymap.set("n", "ca", vim.lsp.buf.code_action, opts)

-- Tree plugin
--
-- Opens Tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Trouble plugin
--
-- Opens Trouble diagnostics window
vim.keymap.set("n", "<leader>te", "<cmd>Trouble diagnostics toggle<cr>", opts)
-- Opens Trouble symbols window
vim.keymap.set("n", "<leader>ts", "<cmd>Trouble symbols toggle focus=false<cr>", opts)

-- Misc
--
-- Exit current buffer
vim.keymap.set("n", "<leader>q", ":q<CR>", opts)
-- Exit current buffer without saving
vim.keymap.set("n", "<leader>Q", ":q!<CR>", opts)
-- Paste from clipbaord
vim.keymap.set("n", "<leader>p", '"+p', opts)
-- Save buffer
vim.keymap.set("n", "<C-s>", ":w<CR>", opts)
-- Exit insert mode
vim.keymap.set("i", "jk", "<Esc>", opts)
-- Jump to previous buffer
vim.keymap.set("n", "<leader><leader>", ":b#<CR>", opts)
