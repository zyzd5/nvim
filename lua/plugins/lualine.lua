return
{
    "nvim-lualine/lualine.nvim",
    enabled = true,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = "VeryLazy",
    config = function()
        require('lualine').setup({
            options = {
                theme = {
                    normal = { 
                        a = { bg = '#5a7913' },
                        b = { bg = 'NONE' },
                        c = { bg = 'NONE' },
                    },
                    insert = { 
                        a = { bg = '#2b575c' },
                        b = { bg = 'NONE' },
                        c = { bg = 'NONE' },
                    },
                    visual = { 
                        a = { bg = '#795962' },
                        b = { bg = 'NONE' },
                        c = { bg = 'NONE' },
                    },
                    replace = {
                        a = { bg = 'NONE' },
                        b = { bg = 'NONE' },
                        c = { bg = 'NONE' },
                    },
                    command = { -- orange
                        a = { bg = '#ea4125' },
                        b = { bg = 'NONE' },
                        c = { bg = 'NONE' },
                    },
                    inactive = {
                        a = { bg = 'NONE' },
                        b = { bg = 'NONE' },
                        c = { bg = 'NONE' },
                    },
                },
            },
        })
    end,
}
