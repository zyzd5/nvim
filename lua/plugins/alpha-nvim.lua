return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	enabled = true,

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		dashboard.section.header.val = {
			[[    ______                 __                 ]],
			[[   / ____/______  ___   __/ /_  ____  _  __   ]],
			[[  / / __/ ___/ / / / | / / __ \/ __ \| |/_/   ]],
			[[ / /_/ / /  / /_/ /| |/ / /_/ / /_/ />  <     ]],
			[[ \____/_/   \__,_/ |___/_.___/\____//_/|_|    ]],
			[[     __  ___      __            _       __    ]],
			[[    /  |/  /___ _/ /____  _____(_)___ _/ /    ]],
			[[   / /|_/ / __ `/ __/ _ \/ ___/ / __ `/ /     ]],
			[[  / /  / / /_/ / /_/  __/ /  / / /_/ / /      ]],
			[[ /_/  /_/\__,_/\__/\___/_/  /_/\__,_/_/       ]],
		}

		alpha.setup(dashboard.opts)
	end,
}
