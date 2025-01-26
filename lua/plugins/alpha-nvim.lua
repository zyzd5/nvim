 return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	enabled = true,

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		local table = {
			{
                 [[ no idea what to be set here ]],
			},
		}

		local random_index = math.random(#table)
		dashboard.section.header.val = table[random_index]
		dashboard.section.buttons.val = {}

		alpha.setup(dashboard.opts)
	end,
}
