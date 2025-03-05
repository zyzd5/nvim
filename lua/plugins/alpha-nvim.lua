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
				[[ * 高精度                            ]],
				[[ * manim | 链式法则, vim :s/a/b/g    ]],
				[[ * 高精度                            ]],
				[[ * 可微                              ]],
				[[ * 不等式                            ]],
				[[ * c++ regex                         ]],
				[[ * c++ performance analysis          ]],
			}, {
                [[ * screw ]],
                [[ * spool ]],
                [[ * shelf ]],
                [[ * funeral ]],
                [[ * sorrow ]],
                [[ * estimate ]],
                [[ * towel ]],
                [[ * moisture ]],
                [[ * court ]],
                [[ * consult]],
                [[ * thrilling]],
                [[ * sore]],
                [[ * spine]],
                [[ * exaggerated]],
                [[ * vendor]],
                [[ * notation]],
            }
		}

		local random_index = math.random(#table)
		dashboard.section.header.val = table[random_index]
		dashboard.section.buttons.val = {}

		alpha.setup(dashboard.opts)
	end,
}
