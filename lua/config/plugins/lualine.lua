return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local colors = {
            blue     = '#7e9cd8', -- Kanagawa Blue
            cyan     = '#7fdbca', -- Kanagawa Cyan
            black    = '#1f1f28', -- Kanagawa Black
            white    = '#dcd7ba', -- Kanagawa White
            red      = '#f7768e', -- Kanagawa Red
            violet   = '#bb9af7', -- Kanagawa Violet
            grey     = '#3b4252', -- Kanagawa Grey
            yellow   = '#e0af68', -- Kanagawa Yellow
            green    = '#9ece6a', -- Kanagawa Green
            midnight = '#16161d',
        }

        local kanagawa_theme = {
            normal = {
                a = { fg = colors.black, bg = colors.violet },
                b = { fg = colors.white, bg = colors.midnight },
                c = { fg = colors.white, bg = colors.midnight },
            },

            insert = { a = { fg = colors.black, bg = colors.blue } },
            visual = { a = { fg = colors.black, bg = colors.cyan } },
            replace = { a = { fg = colors.black, bg = colors.red } },

            inactive = {
                a = { fg = colors.white, bg = colors.midnight },
                b = { fg = colors.white, bg = colors.midnight },
                c = { fg = colors.white, bg = colors.midnight },
                x = { fg = colors.white, bg = colors.midnight },
                y = { fg = colors.white, bg = colors.midnight },
                z = { fg = colors.white, bg = colors.midnight },
            },
        }

        require('lualine').setup {
            options = {
                theme = kanagawa_theme,
                component_separators = '',
                section_separators = {},
                disabled_filetypes = { "NvimTree" },
            },
            sections = {
                lualine_a = {  'mode' },
                lualine_b = { 'filename', 'branch', 'diff' },
                lualine_c = {},
                lualine_x = {},
                lualine_y = { 'filetype', 'filesize', 'encoding', 'progress' },
                lualine_z = { 'location' },
            },
            inactive_sections = {
                lualine_a = { 'filename' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = { 'filetype', 'filesize', 'encoding', 'progress' },
                lualine_z = {},
            },
            tabline = {},
            extensions = {},
        }
    end,
}
