-- Autopair is an autopair Neovim plugin. Meaning, when you type a "{" the corresponding "}"
-- will also be inserted. This plugin does not work for HTML
return {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
}
