vim.opt.whichwrap = "b,h,l,<,>"
vim.opt.showmode = false
vim.opt.laststatus = 0
vim.opt.backspace = { "indent", "eol", "start" }
vim.opt.scrolloff = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.softtabstop = 4
vim.opt.clipboard:append("unnamedplus")
vim.opt.shiftround = true
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.wildmenu = true
vim.opt.wildmode = { "longest:full", "full" }
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.completeopt = { "menu", "menuone", "noselect", "preview" }
vim.opt.cursorline = false
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.autoread = true
vim.opt.title = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.updatetime = 50
vim.opt.mouse = "a"
vim.opt.undofile = true
vim.opt.wrap = true
vim.opt.splitright = true
vim.opt.virtualedit = "all"
---
vim.b.fileenconding = "utf-8"
---
vim.g.mapleader = " "
---
vim.g.markdown_folding = 1
vim.opt.foldlevel = 99
