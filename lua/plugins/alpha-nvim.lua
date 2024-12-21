return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	enabled = true,

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		local table = {
			{
				[[ dash means "-" ]],
				[[ exclamation means "!" ]],
				[[ hash means "#" ]],
			},
			{
				[[ TODO:                               ]],
                [[ * customize alpha.nvim              ]],
				[[ * 三角函数?                         ]],
				[[ * why derivative of sin(x) = cos(x)?]],
				[[ * c++ regex                         ]],
				[[ * c++ performance analysis          ]],
			},
			{
				[[ * symmetry: 对称 ]],
				[[ *    math has a tendency to reward you when you respect its symmetry ]],
				[[ * trigonometry: 三角学 ]],
				[[ *    One of the most important branches of mathematics is trigonometry ]],
				[[ * statistics: 统计学 ]],
				[[ * sail: 航行, sailor: 水手 ]],
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
