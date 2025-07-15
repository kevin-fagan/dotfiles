-- Line numbering
vim.opt.number = true         -- Show absolute line numbers
vim.opt.relativenumber = true -- Show relative line numbers

-- Display
vim.opt.colorcolumn = "100" -- Highlight column 100
vim.opt.cursorline = true   -- Highlight current line
vim.opt.list = true         -- Show invisible characters
vim.opt.listchars = {       -- Customize invisible characters
    tab = "» ",             -- Use a special character for tabs
}

-- Indentation
vim.opt.expandtab = true   -- Use spaces instead of tabs
vim.opt.autoindent = true  -- Auto-indent new lines
vim.opt.smartindent = true -- Smart indentation
vim.opt.tabstop = 4        -- Spaces per tab
vim.opt.shiftwidth = 4     -- Spaces per indentation level
vim.opt.softtabstop = 4    -- Spaces when pressing Tab

-- Misc settings
vim.opt.wrap = false -- Disable line wrapping
