local option = vim.opt
local buffer = vim.b
local global = vim.g

option.showmode = false
option.backspace = {"indent", "eol", "start"}
option.tabstop = 4
option.shiftwidth = 4
option.expandtab = true
option.softtabstop = 4
option.shiftround = true
option.autoindent = true
option.smartindent = true
option.number = true
option.relativenumber = true
option.wildmenu = true
option.wildmode = {"longest:full", "full"}
option.hlsearch = false
option.ignorecase = true
option.smartcase = true
option.completeopt = {"menu", "menuone", "noselect", "preview"}
option.cursorline = true
option.termguicolors = true
option.signcolumn = "yes"
option.autoread = true
option.title = true
option.swapfile = false
option.backup = false
option.updatetime = 50
option.mouse = "a"
option.undofile = true
option.wrap = true
option.splitright = true
option.clipboard:append("unnamedplus")
---
buffer.fileenconding = "utf-8"
---
global.mapleader = " "
---



