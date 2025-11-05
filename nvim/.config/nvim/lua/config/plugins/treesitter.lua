-- Treesitter is a Neovim plugin that allows for syntax highlighting. For Treesitter
-- to perform proper highlighting for a language, the corresponding parsers need to be installed
return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")
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
				"vue",
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
