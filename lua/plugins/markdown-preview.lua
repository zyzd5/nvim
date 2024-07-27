return {
	"iamcco/markdown-preview.nvim",
    enabled = true,
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
		vim.keymap.set("n", "<leader>m", "<cmd>MarkdownPreviewToggle<CR>", { noremap = true })
	end,
	ft = { "markdown" },
}
