-- Lualine is a statusline plugin for Neovim. This config will show what Github branch you are on,
-- which buffer you are currently viewing, file type, and more. Its also customized to match
-- the Everforest theme
return {
    "nvim-lualine/lualine.nvim",
    config = function()
        local colors = {
            black  = "#272e33",
            darkbg = "#2e383c",
            white  = "#d3c6aa",
            gray   = "#859289",
            blue   = "#7fbbb3",
            green  = "#a7c080",
            red    = "#e67e80",
            yellow = "#dbbc7f",
            cyan   = "#83c092",
        }

        local everforest_theme = {
            normal = {
                a = { fg = colors.black, bg = colors.blue },
                b = { fg = colors.white, bg = colors.darkbg },
                c = { fg = colors.white, bg = colors.darkbg },
            },

            insert = { a = { fg = colors.black, bg = colors.green } },
            visual = { a = { fg = colors.black, bg = colors.cyan } },
            replace = { a = { fg = colors.black, bg = colors.red } },

            inactive = {
                a = { fg = colors.white, bg = colors.darkbg },
                b = { fg = colors.white, bg = colors.darkbg },
                c = { fg = colors.white, bg = colors.darkbg },
                x = { fg = colors.white, bg = colors.darkbg },
                y = { fg = colors.white, bg = colors.darkbg },
                z = { fg = colors.white, bg = colors.darkbg },
            },
        }

        require('lualine').setup {
            options = {
                theme = everforest_theme,
                component_separators = { left = '', right = '' },
                disabled_filetypes = { "NvimTree" },
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'branch', 'filename', 'diff' },
                lualine_c = {},
                lualine_x = {},
                lualine_y = { 'encoding', 'fileformat', 'filetype', 'progress' },
                lualine_z = { 'location' },
            },
            inactive_sections = {
                lualine_a = { 'filename' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = { 'encoding', 'fileformat', 'filetype', 'progress' },
                lualine_z = {},
            },
            tabline = {},
            extensions = {},
        }
    end,
}
