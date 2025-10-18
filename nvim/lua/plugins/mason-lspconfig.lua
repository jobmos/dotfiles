return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "basedpyright" },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    config = function(_, opts)
        require("mason-lspconfig").setup(opts)
        
        -- Configure basedpyright with new API
        vim.lsp.config.basedpyright = {
            settings = {
                basedpyright = {
                    analysis = {
                        typeCheckingMode = "recommended",
                    },
                },
            },
        }
        
        -- Enable basedpyright
        vim.lsp.enable('basedpyright')
    end,
}
