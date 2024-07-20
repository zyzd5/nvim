return
    {
        'nvimdev/dashboard-nvim',
        event = 'VimEnter',
        enabled = false,
        config = function()
            require('dashboard').setup {
                theme = 'hyper',
                config = {
                    week_header = { enable = true, },
                    shortcut = {
                        { desc = ' Update', group = '@property', action = 'Lazy update', key = 'u' },
                        { desc = '󰹰 Mason', group = '@property', action = 'Mason', key = 'M'},
                        { desc = '󰹯 Lazy', group = '@property', action = 'Lazy', key = 'L'},
                        { icon = ' ', icon_hl = '@variable', desc = 'Files', group = 'Label', action = 'Telescope find_files', key = 'f' },
                    },
                }
            }end,
        dependencies = {{'nvim-tree/nvim-web-devicons'}}
    }
