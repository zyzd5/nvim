return {
	{
		"williamboman/mason.nvim",
		config = function()
            if vim.g.vscode then
            else
                require("mason").setup()
            end
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
            if vim.g.vscode then
            else
                require("mason-lspconfig").setup({
                    ensure_installed = { "lua_ls" },
                })
            end
		end,
	},
	{
		"neovim/nvim-lspconfig",
		cmd = { "Mason", "Neoconf" },
		event = { "BufReadPost", "BufNewFile" },
		config = function()
            if vim.g.vscode then
            else
                local capabilities = require("cmp_nvim_lsp").default_capabilities()

                local lspconfig = require("lspconfig")

                lspconfig.lua_ls.setup({
                    capabilities = capabilities,
                })
                lspconfig.clangd.setup({
                    capabilities = capabilities,
                })
                lspconfig.pyright.setup({
                    capabilities = capabilities,
                })
                lspconfig.marksman.setup({
                    capabilities = capabilities,
                })
                lspconfig.kotlin_language_server.setup({
                    capabilities = capabilities,
                })
                lspconfig.cmake.setup({
                    capabilities = capabilities,
                })
                vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true })
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true })
            end
		end,
	},
}
