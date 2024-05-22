local keymap = vim.keymap.set

-- <C-Tab> 切换缓冲
keymap("n", "<C-Tab>", "<cmd>bNext<CR>", {silent = true})
-- <leader>w 关闭当前缓冲
keymap("n", "<leader>w", "<cmd>bd<CR>", {silent = true})

-- V模式下JK移动整行
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")
