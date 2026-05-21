return {
    {
        "rebelot/kanagawa.nvim",
        lazy = false,
        priority = 1000,
        opts = {
            theme = "wave",
            background = {
                dark = "wave",
            },
            transparent = false,
            dimInactive = false,
            terminalColors = true,
        },
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "kanagawa",
        },
    },
}
