-- lsp
vim.keymap.set({ "n" }, "<leader>F", [[<cmd>lua vim.lsp.buf.format {async = true}<CR>]], { desc = "format code" })
vim.keymap.set({ "n" }, "<leader>d", [[<cmd>lua vim.lsp.buf.definition<CR>]], { desc = "[d]efinition" })
vim.keymap.set({ "n" }, "<leader>D", [[<cmd>lua vim.lep.buf.declaration<CR>]], { desc = "[D]eclaration" })
vim.keymap.set({ "n" }, "K", [[<cmd> lua vim.lsp.buf.hover<CR>]], {desc = "Hover Documentation"})
vim.keymap.set({ "n" }, "K", [[<cmd> lua vim.lsp.buf.hover<CR>]], {desc = "Hover Documentation"})
