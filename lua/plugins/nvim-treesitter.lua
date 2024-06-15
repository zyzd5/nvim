return
{
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = "cpp",
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
            fold = { enable = true },
        })
        vim.o.foldmethod = 'expr'
        vim.o.foldexpr = 'nvim_treesitter#foldexpr()'
        vim.o.foldlevel = 99 -- 设置初始折叠级别为 99，默认展开所有
        vim.o.foldlevelstart = 99 -- 打开文件时展开所有折叠
        vim.o.foldenable = true -- 启用折叠
    end
}
