return {
	"mg979/vim-visual-multi",
	enabled = true,
	init = function()
		vim.g.VM_default_mapping = 0
		vim.g.VM_set_statusline = 1
		vim.g.VM_silent_exit = 1
		vim.g.VM_maps = {
			["Find Under"] = "<C-d>",
			["Find Subword Under"] = "<C-d>",
			["I BS"] = "",
		}
	end,
}
