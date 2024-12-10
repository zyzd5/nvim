return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	enabled = true,

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		local table = {
			{
				[[ colon means ":" ]],
				[[ comma means "," ]],
				[[ dash means "-" ]],
				[[ exclamation means "!" ]],
				[[ hash means "#" ]],
				[[ parenthese means "()" ]],
			},
			{
				[[ TODO:                      ]],
				[[ *                          ]],
				[[ * tmux add a real bar      ]],
				[[ * c++ performance analysis ]],
				[[ * ncurse.h                 ]],
				[[ * render-markdown.nvim     ]],
				[[ * static_assert()          ]],
				[[ * assert()                 ]],
			},
		}

        local random_index = math.random(#table)
		dashboard.section.header.val = table[random_index]

		alpha.setup(dashboard.opts)
	end,
}
-- [[    ______                 __                 ]],
-- [[   / ____/______  ___   __/ /_  ____  _  __   ]],
-- [[  / / __/ ___/ / / / | / / __ \/ __ \| |/_/   ]],
-- [[ / /_/ / /  / /_/ /| |/ / /_/ / /_/ />  <     ]],
-- [[ \____/_/   \__,_/ |___/_.___/\____//_/|_|    ]],
-- [[     __  ___      __            _       __    ]],
-- [[    /  |/  /___ _/ /____  _____(_)___ _/ /    ]],
-- [[   / /|_/ / __ `/ __/ _ \/ ___/ / __ `/ /     ]],
-- [[  / /  / / /_/ / /_/  __/ /  / / /_/ / /      ]],
-- [[ /_/  /_/\__,_/\__/\___/_/  /_/\__,_/_/       ]],
