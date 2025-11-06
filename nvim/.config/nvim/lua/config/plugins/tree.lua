-- Tree is a Neovim plugin that displays the current file tree
return {
	"nvim-tree/nvim-tree.lua",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local nvimtree = require("nvim-tree")
		nvimtree.setup({
			view = {
				width = 45,
				side = "left",
			},
			renderer = {
				highlight_opened_files = "name",
				icons = {
					show = {
						file = true,
						folder = true,
						folder_arrow = true,
						git = true,
					},
					glyphs = {
						default = "",
						symlink = "",
						folder = {
							arrow_closed = "",
							arrow_open = "",
							default = "",
							open = "",
						},
						git = {
							unstaged = "",
							staged = "",
							unmerged = "",
							renamed = "➜",
							untracked = "",
							deleted = "",
							ignored = "",
						},
					},
				},
			},
			filters = {
				dotfiles = false,
				git_ignored = false,
			},
			git = {
				enable = true,
				ignore = false,
				timeout = 500,
			},
		})

		-- Everforest-inspired colors
		vim.api.nvim_set_hl(0, "NvimTreeFolderIcon", { fg = "#7f9f7f" })
		vim.api.nvim_set_hl(0, "NvimTreeFolderName", { fg = "#8faf87" })
		vim.api.nvim_set_hl(0, "NvimTreeIndentMarker", { fg = "#5f7f5f" })
		vim.api.nvim_set_hl(0, "NvimTreeGitNew", { fg = "#8f9f87" })
		vim.api.nvim_set_hl(0, "NvimTreeGitDirty", { fg = "#d7af5f" })
		vim.api.nvim_set_hl(0, "NvimTreeGitStaged", { fg = "#87af87" })
		vim.api.nvim_set_hl(0, "NvimTreeGitDeleted", { fg = "#d78787" })
		vim.api.nvim_set_hl(0, "NvimTreeGitRenamed", { fg = "#5f8787" })
		vim.api.nvim_set_hl(0, "NvimTreeGitMerge", { fg = "#d7875f" })
	end,
}
