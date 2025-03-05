return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local treesitter = require("nvim-treesitter")
        treesitter.setup({
            ensure_installed = {
                "go",
                "lua",
                "javascript",
                "bash",
                "html",
                "css",
                "json",
                "yaml",
                "toml",
                "terraform",
                "markdown",
                "dockerfile",
                "bash"
            },
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = {
                enable = true,
            },
        })
    end,
}
