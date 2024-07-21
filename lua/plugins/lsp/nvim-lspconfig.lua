return {

	"neovim/nvim-lspconfig",
    cmd = {"Mason", "Neoconf"},
    event = { "BufReadPost", "BufNewFile"},
	config = function()
		local capabilities = require("cmp_nvim_lsp").default_capabilities()

		local lspconfig = require("lspconfig")
		lspconfig.lua_ls.setup({
			capabilities = capabilities
		})
        lspconfig.clangd.setup({
            capabilities = capabilities
        })

		vim.keymap.set("n", "K", vim.lsp.buf.hover, { noremap = true })
		vim.keymap.set("n", "gd", vim.lsp.buf.definition, { noremap = true })
		vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { noremap = true })
	end,
}
