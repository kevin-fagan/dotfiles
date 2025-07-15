return {
    "neanias/everforest-nvim",
    version = false, -- always use latest
    lazy = false,    -- load eagerly at startup
    priority = 1000, -- load before other plugins/themes
    config = function()
        require("everforest").setup({
            background = "hard", -- or 'medium' (default), 'soft'

        })

        -- 👇 Set the colorscheme after setup
        vim.cmd("colorscheme everforest")
    end,
}
