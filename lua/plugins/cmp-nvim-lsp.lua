return {
	"hrsh7th/cmp-nvim-lsp",
    lazy = true,
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("cmp").setup({ sources = { { name = "nvim_lsp" } } })
		-- code
	end,
}
