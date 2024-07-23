local keymap = vim.keymap.set

keymap('i', '<C-BS>', '<C-w>', { noremap = true, silent = true })
keymap('i', '<D-BS>', '<C-w>', { noremap = true, silent = true })

keymap('i', '<D-Left>', 'b', { noremap = true, silent = true })
keymap('i', '<D-Right>', 'w', { noremap = true, silent = true })

-- 当前行放置到屏幕第一行
keymap('n', '<leader>m', 'zt', { noremap = true, silent = true })

-- paste on next line
keymap('n', '<leader>p', 'o<Esc>p', { noremap = true, silent = true })

-- swap window
keymap("n", "<leader>s", ":lua SwapWindows()<CR>", {noremap = true, silent = true})

-- 折叠
keymap("n", "<leader>[", "za", {silent = true})
keymap("n", "<leader>]", "zo", {silent = true})

-- <leader>w 关闭当前缓冲
keymap("n", "<leader>w", "<cmd>bd<CR>", {silent = true})

-- V模式下JK移动整行
keymap("v", "J", ":m '>+1<CR>gv=gv", {silent = true})
keymap("v", "K", ":m '<-2<CR>gv=gv", {silent = true})

-- <leader>vs 右边新增窗口
keymap("n", "<leader>vs", "<cmd>vs<CR>", {silent = true})

-- 在窗口间移动
keymap("n", "<leader>h", "<C-w>h", {silent = true})
keymap("n", "<leader>j", "<C-w>j", {silent = true})
keymap("n", "<leader>k", "<C-w>k", {silent = true})
keymap("n", "<leader>l", "<C-w>l", {silent = true})

-- cursorHome and cursorEnd
keymap("n", "<D-'>", "$", {silent = true})
keymap("n", "<D-;>", "^", {silent = true})
keymap("n", "<leader>'", "$", {silent = true})
keymap("n", "<leader>;", "^", {silent = true})
keymap("v", "<D-'>", "$", {silent = true})
keymap("v", "<D-;>", "^", {silent = true})
keymap("v", "<leader>'", "$", {silent = true})
keymap("v", "<leader>;", "^", {silent = true})

keymap("n", "<leader>da", "ggVGd", {silent = true})
keymap("n", "<leader>va", "ggVG", {silent = true})
