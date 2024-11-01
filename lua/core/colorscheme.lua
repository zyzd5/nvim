vim.cmd("set background=dark")
-- for 'light', 'dark'

vim.cmd("let g:gruvbox_material_foreground = 'original'")
-- for 'material', 'mix', 'original'

vim.cmd("let g:gruvbox_material_background = 'medium'")
-- for 'hard', 'medium', 'soft'

vim.cmd("let g:gruvbox_material_transparent_background = 2")

vim.cmd("let g:gruvbox_material_visual = 'green background'")

vim.cmd("let g:gruvbox_material_ui_contrast = 'low'")
-- for 'high', 'low'

-- vim.cmd("let g:gruvbox_material_colors_override = ''")
-- check :h gruvbox_material_colors_override for more information

vim.cmd("let g:gruvbox_material_diagnostic_line_highlight = 1")
vim.cmd("let g:gruvbox_material_diagnostic_virtual_text = 'colored'")
vim.cmd("let g:gruvbox_material_better_performance = 1")

vim.cmd.colorscheme("gruvbox-material")

if vim.g.neovide then
	vim.o.guifont = "UbuntuMono Nerd Font:h20:w1.1"
	vim.o.linespace = 3
	vim.g.neovide_scale_factor = 1.0
	vim.g.neovide_transparency = 0.70
	vim.g.neovide_show_border = true
	vim.g.neovide_fullscreen = false
	vim.g.neovide_no_window_frame = true
end
