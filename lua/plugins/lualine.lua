return {
	"nvim-lualine/lualine.nvim",
	enabled = true,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	config = function()
		require("lualine").setup({
			options = {
				icons_enabled = true,
				section_separators = { left = "", right = "" },
				component_separators = { left = "", right = "" },
				theme = {
					normal = {
						a = {
							bg = "NONE",
							fg = "#b3e1a7",
						},
						b = { bg = "NONE" },
						c = { bg = "NONE" },
						x = { fg = "#EDDB43" },
					},
					insert = {
						a = {
							bg = "NONE",
							fg = "#9cdae9",
						},
						b = { bg = "NONE" },
						c = { bg = "NONE" },
						x = { fg = "#EDDB43" },
					},
					visual = {
						a = {
							bg = "NONE",
							fg = "#b6bef9",
						},
						b = { bg = "NONE" },
						c = { bg = "NONE" },
						x = { fg = "#EDDB43" },
					},
					command = {
						a = {
							bg = "NONE",
							fg = "#F27649",
						},
						b = { bg = "NONE" },
						c = { bg = "NONE" },
						x = { fg = "#EDDB43" },
					},
					inactive = {
						a = { bg = "NONE" },
						b = { bg = "NONE" },
						c = { bg = "NONE" },
					},
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "diff" },
				lualine_c = { "diagnostics" },
				lualine_x = {
					{
						"searchcount",
						maxcount = 999,
						timeout = 500,
					},
				},
				lualine_y = {
					{
						"filename",
						newfile_status = true,
						path = 3,
						symbols = {
							modified = "[+]",
							readonly = "[read_only]",
							unnamed = "[no_name]",
							newfile = "[new]",
						},
					},
				},
				lualine_z = { "" },
			},
		})
	end,
}
