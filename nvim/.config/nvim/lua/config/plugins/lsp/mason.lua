return {
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup()
        require("mason-tool-installer").setup({
            ensure_installed = {
                "prettier",
            },
        })
    end
}
