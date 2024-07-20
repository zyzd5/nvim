return
{
    "neovim/nvim-lspconfig",
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({})
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {noremap = true})
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {noremap = true})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {noremap = true})
    end
}
