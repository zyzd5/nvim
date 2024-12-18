local keymap = vim.keymap.set

-- Pagedown
keymap("n", "<D-d>", "<C-d>", { noremap = true, silent = true })

-- ignored keybind
keymap("n", "q:", "")
keymap("n", 'q"', "")
keymap("n", "qq", "")
keymap("n", "<C-e>", "")

-- cursorHome and cursorEnd
keymap("n", "'", "$", { silent = true, noremap = true })
keymap("n", ";", "^", { silent = true, noremap = true })
keymap("v", "'", "$", { silent = true, noremap = true })
keymap("v", ";", "^", { silent = true, noremap = true })

-- delete cursorHome and cursorEnd
keymap("n", "d'", "d$", { silent = true, noremap = true })
keymap("n", "d;", "d^", { silent = true, noremap = true })

-- jump and back
keymap("n", "<leader>o", "<C-]>", { noremap = true, silent = true })
keymap("n", "<leader>O", "<C-o>", { noremap = true, silent = true })

-- delete word 
keymap("i", "<D-BS>", "<C-w>", { noremap = true, silent = true })

-- fold toggle
keymap("n", "<leader>[", "zc", { silent = true })
keymap("n", "<leader>]", "zo", { silent = true })

-- <leader>w close current buffer
keymap("n", "<leader>w", "<cmd>bd<CR>", { silent = true })

-- move line Up Down
keymap("v", "J", ":m '>+1<CR>gv=gv", { silent = true })
keymap("v", "K", ":m '<-2<CR>gv=gv", { silent = true })

-- horizontal split
keymap("n", "<leader>vs", "<cmd>vs<CR>", { silent = true })

-- jump over windows
keymap("n", "<leader>h", "<C-w>h", { silent = true })
keymap("n", "<leader>j", "<C-w>j", { silent = true })
keymap("n", "<leader>k", "<C-w>k", { silent = true })
keymap("n", "<leader>l", "<C-w>l", { silent = true })

-- select all
keymap("n", "<leader>va", "ggVG", { silent = true })

-- chinese input modify
keymap("i", "，", ",")
keymap("n", "，", ",")
keymap("i", "：", ":")
keymap("n", "：", ":")
keymap("i", "（", "()<Esc>i")
keymap("i", "）", ")")
keymap("i", "·", "``<Left>")
keymap("i", "。", ".")
keymap("i", "《", "<")
keymap("i", "》", ">")
keymap("i", "【", "[]")
keymap("i", "】", "]")
keymap("i", "¥", "$")
keymap("i", "｜", "|")
keymap("i", "、", "\\")
keymap("i", "「", "{}")
keymap("i", "」", "}")
keymap("i", "？", "?")
