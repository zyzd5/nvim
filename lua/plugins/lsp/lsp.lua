return
{
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig",
        "folke/neodev.nvim",
        { "j-hui/fidget.nvim", opts = {}, }

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
        local on_attach = function(_, bufnf)
            vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
            -- not workable, find a time add them to ketmap.lua
            --             nmap('<leader>I', vim.lsp.buf.implementation, '[I]mplementation')
            --             nmap('<C-K>', vim.lsp.buf.signature_help, 'Signature Documentation')
            --             nmap('<leader>wa', vim.lsp.buf.add_workspace_folder, '[W]orkspace [A]dd Folder')
            --             nmap('<leader>wr', vim.lsp.buf.remove_workspace_folder, '[W]orkspace [R]emove Folder')
            --             nmap('<leader>wl', function()
            --                 print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
            --             end, '[W]orkspace [L]ist Folders')
            -- nmap('<leader>wD', vim.lsp.buf.type_definition, 'Type [D]efinition')
            --             nmap('<leader>rn', vim.lsp.buf.rename, '[R]e[N]ame')
            --             nmap('gr', vim.lsp.buf.references, '[G]oto [R]eferences')
            --             nmap('<leader>F', function()
            --                 vim.lsp.buf.format { async = true }
            --             end, "[F]ormat code")
        end
        require("neodev").setup()
        require("fidget").setup()
        require('mason').setup()
        require("mason-lspconfig").setup({
            ensure_installed = vim.tbl_keys(servers),
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup {
                        settings = servers[server_name],
                        on_attach = on_attach,
                    }
                end,
            }
        })
    end
}
