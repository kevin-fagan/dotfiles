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
  vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
  