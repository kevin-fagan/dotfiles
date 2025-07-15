return {
    {
        "nvim-tree/nvim-web-devicons",
        opts = {
            default = true,
            override = {
                go = {
                    icon = "", -- nf-seti-go2
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
