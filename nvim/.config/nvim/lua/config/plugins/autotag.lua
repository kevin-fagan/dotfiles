-- Autotag is an auttag Neovim plugin. Meaning, when you type a "<" the corresponding ">"
-- will also be inserted.
return {
    'windwp/nvim-ts-autotag',
    event = "InsertEnter",
    config = true
}
