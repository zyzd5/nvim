return {
	"neovim/nvim-lspconfig",
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
		lspconfig.rust_analyzer.setup({
			capabilities = capabilities,
		})
		vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true })
		vim.keymap.set("n", "J", vim.lsp.buf.definition, { noremap = true })
		vim.keymap.set("n", "<F2>", vim.lsp.buf.rename, { noremap = true })
		vim.keymap.set("n", "R", vim.lsp.buf.rename, { noremap = true })
		vim.keymap.set("n", "<F12>", vim.lsp.buf.definition, { noremap = true })
	end,
}
