return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local colors = {
            black  = '#0d1117', -- Background
            white  = '#e6edf3', -- Foreground
            gray   = '#8b949e', -- Muted text
            blue   = '#2f81f7', -- Accent blue
            green  = '#3fb950', -- GitHub green
            red    = '#f85149', -- GitHub red
            yellow = '#d29922', -- GitHub yellow
            cyan   = '#a5d6ff', -- Lighter cyan / info
            darkbg = '#161b22', -- UI panels / sidebar / lualine bg
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
