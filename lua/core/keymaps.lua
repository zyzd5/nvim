vim.keymap.set({"n"}, "<leader>F", [[<cmd>lua vim.lsp.buf.format {async = true}<CR>]], {desc = "format code"}) 
