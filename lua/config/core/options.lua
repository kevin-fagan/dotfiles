vim.opt.number = true         -- Show absolute line numbers
vim.opt.relativenumber = true -- Show relative line numbers

vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.autoindent = true     -- Use auto indenting for the next line
vim.opt.tabstop = 4           -- Number of spaces a tab counts for (e.g., 4 spaces)
vim.opt.shiftwidth = 4        -- Number of spaces for auto-indentation
vim.opt.softtabstop = 4       -- Number of spaces when pressing Tab
vim.opt.smartindent = true    -- Smart indentation for new lines
vim.opt.cursorline = true

vim.opt.list = true -- Enable showing invisible characters
vim.opt.listchars = {
    space = "·",    -- Show a dot for spaces
    tab = "» ",     -- Show a special character for tabs
}
