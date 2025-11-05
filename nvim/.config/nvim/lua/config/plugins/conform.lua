-- Conform is a formatter for Neovim. Conform itself does not format files,
-- rather it calls an exisiting formatter / linter whch must be installed locally
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
				vue = { "prettier" },
				javascript = { "prettier" },
				html = { "prettier" },
				css = { "prettier" },
			},
		})
	end,
}
