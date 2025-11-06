return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({
			settings = {
				Lua = {
					diagnostics = {
						-- Tell Lua LSP these globals are valid
						globals = { "vim" },
					},
				},
			},
		})
	end,
}
