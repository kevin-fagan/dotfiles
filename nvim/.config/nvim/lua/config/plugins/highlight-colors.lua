-- Highlight Colors is a Neovim plugin that highlights colors represented in
-- HEX, RGB, HSL and a few others
return {
    {
        "brenoprata10/nvim-highlight-colors",
        opts = {
            render = "virtual",
            enable_named_colors = true,
            enable_tailwind = true,
            enable_short_hex = true,
            enable_rgb = true,
            enable_hs1 = true,
        },
    },
}
