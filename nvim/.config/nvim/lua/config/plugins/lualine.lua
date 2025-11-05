-- Lualine is a statusline plugin for Neovim. This config will show what Github branch you are on,
-- which buffer you are currently viewing, file type, and more. Its also customized to match
-- the Everforest theme
return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local colors = {
			black = "#272e33",
			darkbg = "#2e383c",
			white = "#d3c6aa",
			gray = "#859289",
			blue = "#7fbbb3",
			green = "#a7c080",
			red = "#e67e80",
			yellow = "#dbbc7f",
			cyan = "#83c092",
			subtle = "#3a454a",
			border = "#414b50",
		}

		local everforest_theme = {
			normal = {
				a = { fg = colors.black, bg = colors.blue, gui = "bold" },
				b = { fg = colors.white, bg = colors.subtle },
				c = { fg = colors.white, bg = colors.darkbg },
			},
			insert = {
				a = { fg = colors.black, bg = colors.green, gui = "bold" },
				b = { fg = colors.white, bg = colors.subtle },
				c = { fg = colors.white, bg = colors.darkbg },
			},
			visual = {
				a = { fg = colors.black, bg = colors.cyan, gui = "bold" },
				b = { fg = colors.white, bg = colors.subtle },
				c = { fg = colors.white, bg = colors.darkbg },
			},
			replace = {
				a = { fg = colors.black, bg = colors.red, gui = "bold" },
				b = { fg = colors.white, bg = colors.subtle },
				c = { fg = colors.white, bg = colors.darkbg },
			},
			command = {
				a = { fg = colors.black, bg = colors.yellow, gui = "bold" },
				b = { fg = colors.white, bg = colors.subtle },
				c = { fg = colors.white, bg = colors.darkbg },
			},
			inactive = {
				a = { fg = colors.gray, bg = colors.darkbg },
				b = { fg = colors.gray, bg = colors.darkbg },
				c = { fg = colors.gray, bg = colors.darkbg },
			},
		}

		require("lualine").setup({
			options = {
				theme = everforest_theme,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" },
				disabled_filetypes = {
					statusline = { "NvimTree" },
				},
			},
			sections = {
				lualine_a = {
					{
						"mode",
						fmt = function(str)
							return str:sub(1, 1)
						end,
					},
				},
				lualine_b = {
					{ "branch", icon = "" },
				},
				lualine_c = {
					{ "filename", path = 1, symbols = { modified = "●", readonly = "", unnamed = "" } },
					{
						"diagnostics",
						sources = { "nvim_lsp" },
						sections = { "error", "warn", "info", "hint" },
						symbols = { error = " ", warn = " ", info = " ", hint = " " },
						colored = true,
						update_in_insert = false,
						always_visible = true,
						diagnostics_color = {
							error = { fg = colors.red },
							warn = { fg = colors.yellow },
							info = { fg = colors.blue },
							hint = { fg = colors.cyan },
						},
					},
				},
				lualine_x = {
					{ "filetype", colored = true, icon_only = true },
				},
				lualine_y = {
					{ "progress", separator = " ", padding = { left = 1, right = 1 } },
				},
				lualine_z = {
					{ "location", padding = { left = 1, right = 1 } },
				},
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = { { "filename", path = 1 } },
				lualine_x = { "location" },
				lualine_y = {},
				lualine_z = {},
			},
			extensions = { "nvim-tree", "lazy", "mason", "trouble" },
		})
	end,
}
