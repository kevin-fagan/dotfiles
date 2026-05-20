-- Treesitter is a Neovim plugin that allows for syntax highlighting. For Treesitter
-- to perform proper highlighting for a language, the corresponding parsers need to be installed
return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	commit = "7caec274fd19c12b55902a5b795100d21531391f",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").install({
			"go",
			"javascript",
			"bash",
			"html",
			"css",
			"json",
			"yaml",
			"toml",
			"terraform",
			"dockerfile",
			"vue",
			"rust",
		})

		vim.api.nvim_create_autocmd("FileType", {
			callback = function()
				pcall(vim.treesitter.start)
			end,
		})
	end,
}
