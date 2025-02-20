-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
-- Setup lazy.nvim
require("lazy").setup({
    spec = {
      -- Catppuccin theme
      { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  
      -- nvim-tree.lua for file explorer
      {
        "nvim-tree/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- Optional icons
        config = function()
          require("nvim-tree").setup({
            view = {
              width = 30,
              side = "left",
            },
            renderer = {
              icons = {
                show = {
                  file = true,
                  folder = true,
                }
              }
            }
          })
          -- Keymap to toggle the file explorer
          vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
        end,
      }
    },
  
    -- Additional Lazy.nvim settings
    install = { colorscheme = { "catppuccin" } },
    checker = { enabled = true },
  })