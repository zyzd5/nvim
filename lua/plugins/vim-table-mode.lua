return {
    "dhruvasagar/vim-table-mode",
    enabled = true,
    config = function ()
        vim.keymap.set("n", "<leader>m", "<cmd>TableModeToggle<CR>", {})
    end,
    ft = "markdown",
}
