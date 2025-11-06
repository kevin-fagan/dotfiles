-- Neovim plugin for automatically highlighting other uses of the word under the cursor using
-- either LSP, Tree-sitter, or regex matching.
return {
	"RRethy/vim-illuminate",
	config = function()
		require("illuminate").configure({
			delay = 100,
			filetypes_denylist = {
				"NvimTree",
				"Trouble",
			},
		})

		-- Set underline for the highlights
		vim.api.nvim_set_hl(0, "IlluminatedWordText", { underline = true })
		vim.api.nvim_set_hl(0, "IlluminatedWordRead", { underline = true })
		vim.api.nvim_set_hl(0, "IlluminatedWordWrite", { underline = true })
	end,
}
