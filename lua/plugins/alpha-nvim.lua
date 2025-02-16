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
				[[ * calculus 1800                     ]],
				[[ * ncurses tetris                    ]],
				[[ * make a video for :s/bar/foo/g using `manim`     ]],
				[[ * 高精度                            ]],
				[[ * c++ regex                         ]],
				[[ * 洛必达?                           ]],
				[[ * c++ performance analysis          ]],
                [[ * 高等数学0基础-03 ~ 0:32:38 ]],
                [[ * 高等数学0基础-04 ~ 0:35:24 ]],
                [[ * 高等数学0基础-07 ~ 1:06:35 ]],
                [[ * 1800基础-01 ~ 0:06:11 ]],
			}, {
                [[ * stroke ]],
                [[ * latter ]],
                [[ * opaque ]],
                [[ * interior ]],
                [[ * interpolate ]],
            }
		}

		local random_index = math.random(#table)
		dashboard.section.header.val = table[random_index]
		dashboard.section.buttons.val = {}

		alpha.setup(dashboard.opts)
	end,
}
