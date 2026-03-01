return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = { "basedpyright", "html", "cssls", "ts_ls", "jsonls" },
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

        -- Enable typescript language server 
        -- https://github.com/typescript-language-server/typescript-language-server
        vim.lsp.enable('ts_ls')

        vim.lsp.config('html', {
          capabilities = capabilities,
        })
        vim.lsp.enable('html')


        vim.lsp.config('cssls', {
          capabilities = capabilities,
        })
        vim.lsp.enable('cssls')

        vim.lsp.config('jsonls', {
          capabilities = capabilities,
        })
        vim.lsp.enable('jsonls')

    end,
}
