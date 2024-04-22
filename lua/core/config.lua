local option = vim.opt
local buffer = vim.b
local global = vim.g

-- Option --
option.showmode = false -- 显示状态, insert等, 会被lualine代替掉, 所以是false
option.tabstop = 4
option.shiftwidth = 4
option.expandtab = true
option.shiftround = true
option.autoindent = true
option.smartindent = true
option.number = true
option.relativenumber = true
option.ignorecase = true
option.smartcase = true
option.hlsearch = false     -- /search 时关闭高亮
option.cursorline = true    -- 高亮鼠标当前行
option.termguicolors = true -- 真彩色
option.undofile = true      -- 在退出后仍然可以undo
option.wrap = true          -- 自动缩进
option.splitright = true    -- 默认在右边打开窗口
option.splitbelow = true    -- 默认在下方打开窗口
option.clipboard:append("unnamedplus")
-- Buffer Setting --
buffer.fileenconding = "utf-8"

-- Global Setting --
global.mapleader = " " --主键: 空格
