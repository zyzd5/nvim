return
    {
        "goolord/alpha-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", },
        enabled = true,

        config = function()
            local alpha = require("alpha")
            local dashboard = require("alpha.themes.dashboard")

            dashboard.section.header.val = {
                    [[ _   _      _ _        __        __         _     _ _  ]],
                    [[| | | | ___| | | ___   \ \      / /__  _ __| | __| | |]],
                    [[| |_| |/ _ \ | |/ _ \   \ \ /\ / / _ \| '__| |/ _` | |]],
                    [[|  _  |  __/ | | (_) |   \ V  V / (_) | |  | | (_| |_|]],
                    [[|_| |_|\___|_|_|\___/     \_/\_/ \___/|_|  |_|\__,_(_)]],
            }

            alpha.setup(dashboard.opts)
        end
    }
