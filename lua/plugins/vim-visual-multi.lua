return {
	"mg979/vim-visual-multi",
	enabled = true,
	init = function()
		vim.g.VM_default_mapping = 0
		vim.g.VM_set_statusline = 1
		vim.g.VM_silent_exit = 1
		vim.g.VM_maps = {
			["Find Under"] = "<D-d>",
			["Find Subword Under"] = "<D-d>",
			["I BS"] = "",
		}
	end,
}
