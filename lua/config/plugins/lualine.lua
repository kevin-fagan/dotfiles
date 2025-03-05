return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local colors = {
            blue   = '#58a6ff', -- GitHub Blue
            cyan   = '#56d4d5', -- GitHub Cyan
            black  = '#24292f', -- GitHub Background
            white  = '#c9d1d9', -- GitHub Foreground
            red    = '#f97583', -- GitHub Red
            green  = '#56d364', -- GitHub Green
            yellow = '#fef2c0', -- GitHub Yellow
            gray   = '#6a737d', -- GitHub Gray
        }

        local github_dark_theme = {
            normal = {
                a = { fg = colors.black, bg = colors.blue },
                b = { fg = colors.white, bg = colors.black },
                c = { fg = colors.white, bg = colors.black },
            },

            insert = { a = { fg = colors.black, bg = colors.green } },
            visual = { a = { fg = colors.black, bg = colors.cyan } },
            replace = { a = { fg = colors.black, bg = colors.red } },

            inactive = {
                a = { fg = colors.white, bg = colors.black },
                b = { fg = colors.white, bg = colors.black },
                c = { fg = colors.white, bg = colors.black },
                x = { fg = colors.white, bg = colors.black },
                y = { fg = colors.white, bg = colors.black },
                z = { fg = colors.white, bg = colors.black },
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
