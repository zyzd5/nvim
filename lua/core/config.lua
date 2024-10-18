local option = vim.opt
local buffer = vim.b
local global = vim.g

option.whichwrap = "b,h,l,<,>"
option.showmode = false
option.backspace = { "indent", "eol", "start" }
option.scrolloff = 4
option.tabstop = 4
option.shiftwidth = 4
option.expandtab = true
option.softtabstop = 4
option.clipboard:append("unnamedplus")
option.shiftround = true
option.autoindent = true
option.smartindent = true
option.number = true
option.relativenumber = true
option.wildmenu = true
option.wildmode = { "longest:full", "full" }
option.hlsearch = false
option.ignorecase = true
option.smartcase = true
option.completeopt = { "menu", "menuone", "noselect", "preview" }
option.cursorline = false
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
---
buffer.fileenconding = "utf-8"
---
global.mapleader = " "
---

