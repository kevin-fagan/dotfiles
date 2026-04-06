-- Treesitter is a Neovim plugin that allows for syntax highlighting. For Treesitter
-- to perform proper highlighting for a language, the corresponding parsers need to be installed
return {
    config = function()
        vim.treesitter.language.install({
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
            "vue",
        })
    end,
}
