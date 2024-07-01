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

-- clipboard
local is_win = vim.fn.has("win32") == 1

if is_win then
    vim.g.clipboard = {
        name = 'WslClipboard',
        copy = {
            ['+'] = 'clip.exe',
            ['*'] = 'clip.exe',
        },
        paste = {
            ['+'] = [[powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))]],
            ['*'] = [[powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))]],
        },
        cache_enabled = 0,
    }
else 
    option.clipboard:append("unnamedplus")
end


