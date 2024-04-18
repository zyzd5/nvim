return
{
    "neovim/nvim-lspconfig",
    dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig",
        },
    config = function()
        local servers = {
                lua_ls = {
                    Lua = {
                        workspace = { checkThirdParty = false },
                        telemetry = { enable = false },
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
        require("mason-lspconfig").setup({
                ensure_installed = vim.tbl_keys(servers),
                handlers = {
                    function(server_name)
                        require("lspconfig")[server_name].setup {
                            settings = servers[server_name],
                            on_attach = on_attach,
                        }
                    end
                }
            })
    end,

}
