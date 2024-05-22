return
{
    'akinsho/bufferline.nvim',
    enabled = false,
    version = "*",
    event = "VeryLazy",
    dependencies = 'nvim-tree/nvim-web-devicons',
    keys = {
    },
    config = function()
        require('bufferline').setup({})
    end,
}
