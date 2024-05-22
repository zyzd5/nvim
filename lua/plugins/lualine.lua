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
                        a = { bg = 'NONE' },
                        b = { bg = 'NONE' },
                        c = { bg = 'NONE' },
                    },
                    insert = {
                        a = { bg = 'NONE' },
                        b = { bg = 'NONE' },
                        c = { bg = 'NONE' },
                    },
                    visual = {
                        a = { bg = 'NONE' },
                        b = { bg = 'NONE' },
                        c = { bg = 'NONE' },
                    },
                    replace = {
                        a = { bg = 'NONE' },
                        b = { bg = 'NONE' },
                        c = { bg = 'NONE' },
                    },
                    command = {
                        a = { bg = 'NONE' },
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
