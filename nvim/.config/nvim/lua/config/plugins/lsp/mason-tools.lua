-- Used to install tools via Mason (Not used to install LSPs)
return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	dependencies = { "mason-org/mason.nvim" },
	config = function()
		require("mason-tool-installer").setup({
			ensure_installed = {
				"prettier",
				"stylua",
			},
			auto_update = true,
		})
	end,
}
