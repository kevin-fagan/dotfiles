-- Used to install LSPs via Mason
return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "gopls",
            "ts_ls",
            "html",
            "vue_ls",
            "cssls",
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function(_, opts)
        require("mason-lspconfig").setup(opts)

        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local vue_language_server = vim.fn.expand(
            "~/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server"
        )

        vim.lsp.config("ts_ls", {
            capabilities = capabilities,
            init_options = {
                plugins = {
                    {
                        name = "@vue/typescript-plugin",
                        location = vue_language_server,
                        languages = { "vue" },
                    },
                },
            },
            filetypes = { "typescript", "javascript", "vue" },
        })

        vim.lsp.config("vue_ls", {
            capabilities = capabilities,
            filetypes = { "vue" },
        })

        vim.lsp.enable({ "ts_ls", "vue_ls" })
    end,
}
