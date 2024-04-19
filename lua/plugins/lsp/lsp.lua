return
{
    "neovim/nvim-lspconfig",
    cmd = {
            "Mason",
            "Neoconf",
        },
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig",
        "folke/neoconf.nvim",
        "folke/neodev.nvim",
        {
            "j-hui/fidget.nvim",
            tag = "legacy",
        },
        "nvimdev/lspsaga.nvim",
    },
    config = function()
        local servers = {
            lua_ls = {
                settings = {
                    Lua = {
                        workspace = { checkThirdParty = false },
                        telemetry = { enable = false },
                    },
                },
            },
            pyright = {},
            jsonls = {},
            marksman = {},
            dockerls = {},
            clangd = {},
            cmake = {},
            jdtls = {},
            ltex = {},
            rust_analyzer = {},
            yamlls = {},
        }
        local on_attach = function(_, bufnr)
            end
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require("mason-lspconfig").setup({
            ensure_installed = vim.tbl_keys(servers),
        })

        for servers, config in pairs(servers) do
            require("lspconfig")[server].setup(
                vim.tbl_deep_extend("keep",
                    {
                        on_attach = on_attach,
                        capabilities = capabilities
                    },
                    config
                )
            )
        end
    end,

}

