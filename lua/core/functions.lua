vim.api.nvim_create_user_command('CompileAndRun', function()
    vim.cmd("split")
    vim.cmd("wincmd j")
    vim.cmd("resize 8")
    vim.cmd("term g++ % && ./a.out")
end, {})
vim.keymap.set("n", "<F6>" , ":CompileAndRun<CR>", {})
