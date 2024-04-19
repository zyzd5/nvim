return
{
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    keys = {
        { "<leader>e", ":NvimTreeToggle<CR>", desc = "NvimTreeToggle", silent = true },
        { "<leader>h", ":NvimTreeOpen<CR>",   desc = "NvimTreeOpen",   silent = true },
    },
    config = function()
        require("nvim-tree").setup {}
    end,
}
