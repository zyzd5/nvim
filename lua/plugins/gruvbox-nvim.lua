return {
	"ellisonleao/gruvbox.nvim",
	priority = 1000,
	opts = ...,
	event = "VeryLazy",
	config = function()
		vim.cmd([[colorscheme gruvbox]])
		if vim.g.neovide then
			vim.o.guifont = "UbuntuMono Nerd Font:h20:w1.1"
			vim.o.linespace = 3
			vim.g.neovide_scale_factor = 1.0
			vim.g.neovide_transparency = 0.70
			vim.g.neovide_show_border = true
			vim.g.neovide_fullscreen = false
			vim.g.neovide_no_window_frame = true
		else
			vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
		end
	end,
}
