return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local colors = {
            blue     = '#7e9cd8',       -- Kanagawa Blue
            cyan     = '#7fdbca',       -- Kanagawa Cyan
            black    = '#1f1f28',       -- Kanagawa background
            white    = '#dcd7ba',       -- Kanagawa White
            red      = '#f7768e',       -- Kanagawa Red
            violet   = '#bb9af7',       -- Kanagawa Violet
            grey     = '#3b4252',       -- Kanagawa Grey
            yellow   = '#e0af68',       -- Kanagawa Yellow
            green    = '#9ece6a',       -- Kanagawa Green
            inactive = '#16161d',       -- Black used for the inactive windows
        }

        local kanagawa_theme = {
            normal = {
                a = { fg = colors.black, bg = colors.violet },
                b = { fg = colors.white, bg = colors.grey },
                c = { fg = colors.white },
            },

            insert = { a = { fg = colors.black, bg = colors.blue } },
            visual = { a = { fg = colors.black, bg = colors.cyan } },
            replace = { a = { fg = colors.black, bg = colors.red } },

            inactive = {
                a = { fg = colors.white, bg = colors.inactive },
                z = { fg = colors.white, bg = colors.inactive },
            },
        }

        require('lualine').setup {
            options = {
                theme = kanagawa_theme,
                component_separators = '',
                section_separators = { left = '', right = '' },
                disabled_filetypes = { "NvimTree" },
            },
            sections = {
                lualine_a = { { 'mode', separator = { left = '' }, right_padding = 2 } },
                lualine_b = { 'filename', 'branch', 'diff' },
                lualine_c = {},
                lualine_x = {},
                lualine_y = { 'filetype', 'progress' },
                lualine_z = {
                    { 'location', separator = { right = '' }, left_padding = 2 },
                },
            },
            inactive_sections = {
                lualine_a = { 'filename' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = { 'filetype' },
            },
            tabline = {},
            extensions = {},
        }
    end,
}
