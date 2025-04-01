vim.cmd("set background=dark")
-- for 'light', 'dark'

vim.cmd("let g:gruvbox_material_foreground = 'original'")
-- for 'material', 'mix', 'original'

vim.cmd("let g:gruvbox_material_background = 'hard'")
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

vim.cmd.colorscheme("catppuccin")
