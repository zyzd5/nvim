return {
	"nvim-lualine/lualine.nvim",
	enabled = true,
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	config = function()
		require("lualine").setup({
			options = {
				theme = {
					normal = {
						a = { bg = "#5a6000" },
						b = { bg = "NONE" },
						c = { bg = "NONE" },
					},
					insert = {
						a = { bg = "#2b577a" },
						b = { bg = "NONE" },
						c = { bg = "NONE" },
					},
					visual = {
						a = { bg = "#795962" },
						b = { bg = "NONE" },
						c = { bg = "NONE" },
					},
					replace = {
						a = { bg = "#2f5f63" },
						b = { bg = "NONE" },
						c = { bg = "NONE" },
					},
					command = { -- orange
						a = { bg = "#b33a22" },
						b = { bg = "NONE" },
						c = { bg = "NONE" },
					},
					inactive = {
						a = { bg = "NONE" },
						b = { bg = "NONE" },
						c = { bg = "NONE" },
					},
				},
			},
		})
	end,
}
