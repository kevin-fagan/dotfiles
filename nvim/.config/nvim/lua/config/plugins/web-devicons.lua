-- Web Dev Icons is a Neovim plugin that provides Nerd Font icons for the appropriate file type
return {
	{
		"nvim-tree/nvim-web-devicons",
		opts = {
			default = true,
			override = {
				go = {
					icon = "",
					color = "#00ADD8",
					cterm_color = "61",
					name = "Go",
				},
			},
			override_by_filename = {
				["go.mod"] = {
					icon = "",
					color = "#00ADD8",
					name = "GoMod",
				},
				["go.sum"] = {
					icon = "",
					color = "#00ADD8",
					name = "GoSum",
				},
			},
		},
	},
}
