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
				[[ * calculus 1800                     ]],
				[[ * ncurses tetris                    ]],
				[[ * make a video for :s/bar/foo/g     ]],
				[[ * 快速幂                            ]],
				[[ * debug with lldb                   ]],
				[[ * 高精度                            ]],
				[[ * c++ regex                         ]],
				[[ * c++ performance analysis          ]],
			},
			{
				[[ * symmetry: 对称 ]],
				[[ *    math has a tendency to reward you when you respect its symmetry ]],
				[[]],
				[[ * trigonometry: 三角学 ]],
				[[ *    One of the most important branches of mathematics is trigonometry ]],
				[[]],
				[[ * statistics: 统计学 ]],
				[[]],
				[[ * sail: 航行, sailor: 水手 ]],
				[[]],
				[[ * sake: (purpose)]],
				[[ *    For the sake of simplicity]],
			},
		}

		local random_index = math.random(#table)
		dashboard.section.header.val = table[random_index]
		dashboard.section.buttons.val = {}

		alpha.setup(dashboard.opts)
	end,
}
