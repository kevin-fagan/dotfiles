-- Line numbering --
--
-- Shows absolute line number on the left
vim.opt.number = true
-- Shows relative line numbers relative to the cursor line
vim.opt.relativenumber = true

-- Display --
--
-- Draws a vertical line at column 100 (useful for max line length)
vim.opt.colorcolumn = "100"
-- Highlights the entire line where your cursor is
vim.opt.cursorline = true
-- Displays invisible characters
vim.opt.list = true
-- Defines how invisible characters are displayed
vim.opt.listchars = {
	tab = "» ",
}

-- Indentation --
--
-- Use spaces instead of tabs
vim.opt.expandtab = true
-- Copy indent from current line when starting a new line
vim.opt.autoindent = true
-- Do smart autoindenting when starting a new line
vim.opt.smartindent = true
-- Number of spaces a tab counts for
vim.opt.tabstop = 4
-- Number of spaces used for each step of (auto)indent
vim.opt.shiftwidth = 4
-- Number of spaces a Tab counts for while editing (insert mode)
vim.opt.softtabstop = 4

-- Misc --
--
-- Disable text wrapping
vim.opt.wrap = false
