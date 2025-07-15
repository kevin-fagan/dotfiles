return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local nvimtree = require("nvim-tree")
        nvimtree.setup({
            view = {
                width = 45,
                side = "left",
            },
            renderer = {
                icons = {
                    show = {
                        file = true,
                        folder = true,
                    }
                }
            },
            filters = {
                dotfiles = false,
                git_ignored = false,
            },
        })
    end,
}
