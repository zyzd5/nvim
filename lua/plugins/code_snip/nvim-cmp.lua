return {
	"hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp"
    },
	config = function()
		local cmp = require("cmp")
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local capabilities = cmp_nvim_lsp.default_capabilities()

		cmp.setup({
			window = {
				completion = cmp.config.window.bordered(),
				documentation = cmp.config.window.bordered(),
			},
			mapping = cmp.mapping.preset.insert({
                ["<C-Space>"] = cmp.mapping.complete(),
				["<D-e>"] = cmp.mapping.abort(),
				["<Tab>"] = cmp.mapping.select_next_item(),
				["<S-Tab>"] = cmp.mapping.select_prev_item(),
				["<D-o>"] = cmp.mapping.open_docs(),
				["<CR>"] = cmp.mapping.confirm({ select = true }),
			}),
            sources = {
                {name = "nvim_lsp"}
            }
		})
        vim.lsp.config("*", {
            capabilities = capabilities,
        })
	end,
}
