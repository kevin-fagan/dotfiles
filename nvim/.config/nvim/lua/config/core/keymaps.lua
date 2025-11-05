local ts = require("telescope.builtin")
local opts = { noremap = true, silent = true }

-- Navigating windows
vim.keymap.set("n", "<leader>h", "<C-w>h", opts) -- Left window
vim.keymap.set("n", "<leader>l", "<C-w>l", opts) -- Right window
vim.keymap.set("n", "<leader>k", "<C-w>k", opts) -- Top window
vim.keymap.set("n", "<leader>j", "<C-w>j", opts) -- Bottom window

-- Navigating file
vim.keymap.set("n", "<leader>e", "$", opts) -- Start of line
vim.keymap.set("n", "<leader>s", "0", opts) -- End of line
vim.keymap.set("n", "<leader>b", "G", opts) -- Top of file
vim.keymap.set("n", "<leader>t", "gg", opts) -- Bottom of file

-- Deleting content
vim.keymap.set("n", "<leader>de", "d$", opts) -- Start of line
vim.keymap.set("n", "<leader>ds", "d0", opts) -- End of line
vim.keymap.set("n", "<leader>db", "dG", opts) -- Top of file
vim.keymap.set("n", "<leader>dt", "dgg", opts) -- Bottom of file

-- Telescope
vim.keymap.set("n", "<leader>ff", ts.find_files, opts)
vim.keymap.set("n", "<leader>fg", ts.live_grep, opts)
vim.keymap.set("n", "<leader>fb", ts.buffers, opts)
vim.keymap.set("n", "<leader>fh", ts.help_tags, opts)
vim.keymap.set("n", "<leader>fd", ts.lsp_definitions, opts)
vim.keymap.set("n", "<leader>fr", ts.lsp_references, opts)
vim.keymap.set("n", "<leader>fe", ts.diagnostics, opts)

-- Code actions
vim.keymap.set("n", "ch", vim.lsp.buf.hover, opts)
vim.keymap.set("n", "cr", vim.lsp.buf.rename, opts)
vim.keymap.set("n", "ca", vim.lsp.buf.code_action, opts)

-- File tree
vim.keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>", opts)

-- Misc
vim.keymap.set("n", "<leader>q", ":q<CR>", opts) -- Exit file
vim.keymap.set("n", "<leader>Q", ":q!<CR>", opts) -- Exit without saving
vim.keymap.set("n", "<leader>p", '"+p', opts) -- Paste clipboard
vim.keymap.set("n", "<C-s>", ":w<CR>", opts) -- Save File
vim.keymap.set("i", "jk", "<Esc>", opts) -- Exit insert mode
vim.keymap.set("n", "<leader><leader>", ":b#<CR>", opts) -- Go to previous buffer
