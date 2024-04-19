return
{
    'nvim-telescope/telescope.nvim',
    tag = '0.1.6',
    event = "VeryLazy",
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = 'make',
        }
    },
    keys = {
        { "<leader>ff", ":Telescope find_files<CR>", desc = "find_files", silent = true },
        { "<leader>fg", ":Telescope live_grep<CR>",  desc = "live_grep",  silent = true },
        { "<leader><space>", ":Telescope buffers<CR>",    desc = "buffers",    silent = true },
        { "<leader>fh", ":Telescope help_tags<CR>",  desc = "help_tags",  silent = true },
        { "<leader>fo", ":Telescope oldfiles<CR>",   desc = "oldfiles",   silent = true },
    },
    config = function()
        require('telescope').setup({
                extension = {
                    fzf = {
                        fuzzy = true,
                        override_generic_sorter = true,
                        override_file_sorter = true,
                        case_mode = "smart_case",
                    }
                }
            })
        require('telescope').load_extension('fzf')
    end,
}
