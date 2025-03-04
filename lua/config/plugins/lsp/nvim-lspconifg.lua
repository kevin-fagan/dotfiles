return {
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        -- Configure lua_ls (for Lua autocompletion)
        lspconfig.lua_ls.setup({
            on_attach = function(client, bufnr)
            end,
            capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
        })

        -- Configure gopls (for Go autocompletion)
        lspconfig.gopls.setup({
            on_attach = function(client, bufnr)
            end,
            capabilities = cmp_nvim_lsp.default_capabilities(vim.lsp.protocol.make_client_capabilities())
        })
    end
}
