vim.opt.number = true          -- Show absolute line numbers
vim.opt.relativenumber = true  -- Show relative line numbers

vim.opt.tabstop = 4            -- Number of spaces tabs count for
vim.opt.shiftwidth = 4         -- Size of an indentation level
vim.opt.expandtab = true       -- Convert tabs to spaces
vim.opt.smartindent = true     -- Smart indentation on new lines

vim.opt.list = true            -- Enable showing invisible characters
vim.opt.listchars = {
  space = "·",                 -- Show a dot for spaces
  tab = "» ",                  -- Show a special character for tabs
}