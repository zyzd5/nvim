local keymap = vim.keymap.set

keymap('i', '，', ',')
keymap('n', '，', ',')
keymap('i', '：', ':')
keymap('n', '：', ':')
keymap('i', '（', '()<Esc>i')
keymap('i', '）', ')')
keymap('i', '·', '``<Left>')
keymap('i', '。', '.')
keymap('i', '《', '<')
keymap('i', '》', '>')
keymap('i', '¥', '$')
keymap('i', '｜', '|')
keymap('i', '、', "\\")
keymap('i', '「', "{}")
keymap('i', '」', "}")
keymap('i', '？', "?")


-- scrollLineUp & scrollLineDown
keymap('n', '<D-Down>', '<C-e>', { noremap = true, silent = true })
keymap('n', '<D-Up>', '<C-y>', { noremap = true, silent = true })
keymap('i', '<D-Down>', '<Esc><C-e>a', { noremap = true, silent = true })
keymap('i', '<D-Up>', '<Esc><C-y>a', { noremap = true, silent = true })

-- indent
keymap('n', '<D-]>', '>>', { noremap = true, silent = true })
keymap('n', '<D-[>', '<<', { noremap = true, silent = true })
keymap('v', 'D-]', '>>', { noremap = true, silent = true })
keymap('v', 'D-[', '<<', { noremap = true, silent = true })

-- cursorHome and cursorEnd
keymap('n', '<D-Left>', '^', { noremap = true, silent = true, desc = "cursorHome"})
keymap('n', '<D-Right>', '$', { noremap = true, silent = true, desc = "cursorEnd"})

-- Go to bracket
keymap('n', '\\', '%', { noremap = true, silent = true, desc = "Go to bracket"})
keymap('v', '\\', '%', { noremap = true, silent = true, desc = "Go to bracket"})

keymap('n', '<leader>o', '<C-]>', { noremap = true, silent = true })
keymap('n', '<leader>O', '<C-o>', { noremap = true, silent = true })

keymap('i', '<C-BS>', '<C-w>', { noremap = true, silent = true })
keymap('i', '<D-BS>', '<C-w>', { noremap = true, silent = true })

-- 折叠
keymap("n", "<leader>[", "zc", {silent = true})
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
keymap("n", "'", "$", {silent = true, noremap = true})
keymap("n", ";", "^", {silent = true, noremap = true})
keymap("v", "'", "$", {silent = true, noremap = true})
keymap("v", ";", "^", {silent = true, noremap = true})

keymap("n", "<leader>va", "ggVG", {silent = true})
