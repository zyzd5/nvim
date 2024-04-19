return
{
    "nvim-lualine/lualine.nvim",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    event = "BufRead",
    config = function()
        require('lualine').setup()
    end,
}
