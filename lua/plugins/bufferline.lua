return
{
    'akinsho/bufferline.nvim',
    version = "*",
    event = "InsertEnter",
    dependencies = 'nvim-tree/nvim-web-devicons',
    keys = {
        { "<leader>w",     ":BufferLinePickClose<CR>", desc = "Pick a buffer close", silent = true },
        { "<leader><tab>", ":BufferLineMoveNext<CR>",  desc = "Move to next buffer",  silent = true },
    },
    config = function()
        require('bufferline').setup({})
    end,
}
