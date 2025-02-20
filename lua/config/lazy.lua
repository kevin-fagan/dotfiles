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

-- Set leader keys
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Load plugins using lazy.nvim
require("lazy").setup({
  spec = {
    { 
        "catppuccin/nvim", name = "catppuccin", priority = 1000 
    },
    {
      "nvim-tree/nvim-tree.lua",
      dependencies = { "nvim-tree/nvim-web-devicons" },
      config = function()
        require("config.plugins.filetree")
      end,
    },
    {
      "nvim-treesitter/nvim-treesitter",
      build = ":TSUpdate",
      config = function()
        require("config.plugins.treesitter")
      end,
    },
    {
        "hrsh7th/nvim-cmp",        -- Autocompletion plugin
        dependencies = {
          "hrsh7th/cmp-nvim-lsp",  -- LSP source for nvim-cmp
          "hrsh7th/cmp-buffer",    -- Buffer completions
          "hrsh7th/cmp-path",      -- Path completions
          "hrsh7th/cmp-cmdline",   -- Command-line completions
          "L3MON4D3/LuaSnip",      -- Snippet engine
          "saadparwaiz1/cmp_luasnip", -- Snippet completions
        },
        config = function()
          require("config.plugins.cmp")
        end,
      }
      
  },

  checker = { enabled = true },
})
