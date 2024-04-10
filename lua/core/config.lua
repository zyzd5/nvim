-- number
vim.opt.relativenumber = true
vim.opt.number = true

-- tab
vim.opt.tabstop = 4		-- 显示缩进符时的缩进数
vim.opt.shiftwidth = 4		-- 按下tab插入的缩进数
vim.opt.expandtab = true        -- 使用空格代替制表符进行缩进
vim.opt.autoindent = true      	-- 自动缩进

--防止包裹
vim.opt.wrap = false

-- 光标
vim.opt.cursorline = true

-- 启用鼠标
vim.opt.mouse:append("a")

-- 系统剪切板
vim.opt.clipboard:append("unnamedplus")

-- 默认新窗口右和下
vim.opt.splitright = true
vim.opt.splitbelow = true

-- 搜索
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 外观
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"

