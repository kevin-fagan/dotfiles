return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local colors = {
            black  = "#272e33", -- ⬅️ Slightly lighter than #1e2326 for better visibility
            darkbg = "#2e383c", -- Mid-level UI background
            white  = "#d3c6aa", -- Foreground
            gray   = "#859289", -- Muted
            blue   = "#7fbbb3", -- Accent blue
            green  = "#a7c080", -- Success / function
            red    = "#e67e80", -- Error / keyword
            yellow = "#dbbc7f", -- Warnings / constants
            cyan   = "#83c092", -- Hints / operators
        }




        local github_dark_theme = {
            normal = {
                a = { fg = colors.black, bg = colors.blue },
                b = { fg = colors.white, bg = colors.darkbg }, -- Update to darkbg
                c = { fg = colors.white, bg = colors.darkbg }, -- Update to darkbg
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
                theme = github_dark_theme,
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
