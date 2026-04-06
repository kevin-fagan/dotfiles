-- Used to install LSPs via Mason
return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "lua_ls",
                "gopls",
                "ts_ls",
                "html",
                "vue_ls",
                "cssls",
            },
            handlers = {
                -- default handler for all servers
                function(server_name)
                    vim.lsp.enable(server_name)
                end,
            },
        })

        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        local vue_language_server = vim.fn.expand(
            "~/.local/share/nvim/mason/packages/vue-language-server/node_modules/@vue/language-server"
        )

        -- Custom configs only for servers that need them
        vim.lsp.config("lua_ls", {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
        })

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
    end,
}
