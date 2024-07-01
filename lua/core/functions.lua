function SwapWindows()
    local cur_win = vim.api.nvim_get_current_win()
    local cur_buf = vim.api.nvim_get_current_buf()

    -- 获取下一个窗口
    vim.cmd('wincmd w')
    local next_win = vim.api.nvim_get_current_win()
    local next_buf = vim.api.nvim_get_current_buf()

    -- 交换窗口内容
    vim.api.nvim_win_set_buf(cur_win, next_buf)
    vim.api.nvim_win_set_buf(next_win, cur_buf)
end

