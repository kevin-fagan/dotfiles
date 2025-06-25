return {
    "stevearc/conform.nvim",
    config = function()
        require("conform").setup({
            format_on_save = {
                timeout_ms = 500,
                lsp_format = "fallback",
            },
            formatters_by_ft = {
                go = { "goimports", "gofmt" },
                lua = { "stylua" },
                javascript = { "prettier" },
                html = { "prettier" },
                css = { "prettier" }
            },
        })
    end
}
