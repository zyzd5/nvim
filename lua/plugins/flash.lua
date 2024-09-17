return {
	"folke/flash.nvim",
	event = "VeryLazy",
	enabled = true,
	opts = {
		modes = {
			search = {
				enabled = true,
			},
		},
	},
	keys = {
		{
			"s",
			mode = { "n", "x", "o" },
			function()
				require("flash").jump({
					search = {
						forward = false,
						warp = false,
						multi_window = false,
					},
                    mode = function(str)
                        return "\\<" .. str
                    end,
				})
			end,
			desc = "Flash",
		},
		{
			"S",
			mode = { "n", "x", "o" },
			function()
				require("flash").treesitter()
			end,
			desc = "Flash Treesitter",
		},
	},
}
