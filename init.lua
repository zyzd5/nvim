require("core.config")
require("core.keymap")
require("core.lazy")

vim.cmd [[colorscheme gruvbox]]

vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
-- vim.api.nvim_create_autocmd('VimEnter', {
--   callback = function()
--     vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
--   end,
-- })
