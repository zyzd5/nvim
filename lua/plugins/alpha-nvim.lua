return {
	"goolord/alpha-nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	enabled = true,

	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		local table = {
			{
				[[ TODO:                               ]],
				[[ * 语言病理学, 心理语言潜台词        ]],
				[[ * make pronounce good               ]],
				[[ * latex relearn it and format it    ]],
				[[ * calculus 1800                     ]],
				[[ * ncurses tetris                    ]],
				[[ * make a video for :s/bar/foo/g using `manim`     ]],
				[[ * 快速幂                            ]],
				[[ * debug with lldb                   ]],
				[[ * 高精度                            ]],
				[[ * c++ regex                         ]],
				[[ * c++ performance analysis          ]],
			},
			{
				[[ * symmetry: 对称]],
				[[]],
				[[ * trigonometry: ]],
				[[]],
				[[ * statistics: ]],
				[[]],
				[[ * sail: , sailor: ]],
				[[]],
				[[ * sake: purpose]],
				[[]],
				[[ * withstand: ]],
				[[]],
				[[ * vegetation: ]],
				[[]],
				[[ * repay: ]],
				[[]],
			},
			{
				[[ * remarkable: ]],
				[[]],
				[[ * physiology: ]],
				[[]],
				[[ * adjective: ]],
				[[]],
				[[ * appliance: ]],
				[[]],
				[[ * applicable: ]],
				[[]],
				[[ * apt: ]],
				[[]],
				[[ * severe: ]],
				[[]],
			},
			{
				[[ * scheme: ]],
				[[]],
				[[ * participate: ]],
				[[]],
				[[ * mustache: ]],
				[[]],
				[[ * vulnerable: ]],
				[[]],
				[[ * resume: ]],
				[[]],
				[[ * leak: ]],
				[[]],
				[[ * fledged: ]],
				[[]],
			},
		}

		local random_index = math.random(#table)
		dashboard.section.header.val = table[random_index]
		dashboard.section.buttons.val = {}

		alpha.setup(dashboard.opts)
	end,
}
