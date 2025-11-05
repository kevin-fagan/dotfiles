-- Used to install LSPs via Mason
return {
	"mason-org/mason-lspconfig.nvim",
	opts = {
		ensure_installed = {
			"lua_ls",
			"gopls",
			"ts_ls",
			"volar",
			"html",
			"tailwindcss",
			"cssls",
		},
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	config = function(_, opts)
		require("mason-lspconfig").setup(opts)

		local lspconfig = require("lspconfig")
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		-- get_install_path keeps returning nil, while the hardcoded path does not
		local vue_language_server =
			vim.fn.expand("~/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server")

		-- Setup ts_ls with Vue plugin
		lspconfig.ts_ls.setup({
			capabilities = capabilities,
			init_options = {
				plugins = {
					{
						name = "@vue/typescript-plugin",
						location = vue_language_server,
						languages = { "vue" },
					},
				},
			},
			filetypes = { "typescript", "javascript", "vue" },
		})

		-- Setup Volar for Vue files
		lspconfig.volar.setup({
			capabilities = capabilities,
			filetypes = { "vue" },
		})
	end,
}
