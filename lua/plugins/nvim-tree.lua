return
{
    "nvim-tree/nvim-tree.lua",
    version = "*",
    event = "VeryLazy", 
    lazy = true,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "<leader>e", ":NvimTreeToggle<CR>", desc = "NvimTreeToggle", silent = true },
    },
    config = function()
        require("nvim-tree").setup {}
    end,
}
