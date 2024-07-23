return {{
	"williamboman/mason.nvim",
	config = function()
		require("mason").setup()
	end
}, {
	"williamboman/mason-lspconfig.nvim",
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = { "lua_ls" },
		})
	end
}, {

	"neovim/nvim-lspconfig",
	cmd = { "Mason", "Neoconf" },
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({
			capabilities = capabilities,
		})
		lspconfig.clangd.setup({
			capabilities = capabilities,
		})

		vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true })
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true })
	end
}}
