return {
	"kylechui/nvim-surround",
	version = "*",
	enabled = true,
	event = "VeryLazy",
	config = function()
		require("nvim-surround").setup({})
        vim.keymap.set("v", "s", "<Plug>(nvim-surround-visual)", { noremap = false, silent = true })
        vim.keymap.set("v", "(", "<Plug>(nvim-surround-visual))", { noremap = false, silent = true })
        vim.keymap.set("v", '"', '<Plug>(nvim-surround-visual)"', { noremap = false, silent = true })
        vim.keymap.set("v", '{', '<Plug>(nvim-surround-visual)}', { noremap = false, silent = true })
        vim.keymap.set("v", '[', '<Plug>(nvim-surround-visual)]', { noremap = false, silent = true })
        vim.keymap.set("v", '`', '<Plug>(nvim-surround-visual)`', { noremap = false, silent = true })
	end,
}
