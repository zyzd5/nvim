return
{
    "echasnovski/mini.comment",
    event = 'VeryLazy',
    config = function()
        require("mini.comment").setup({
            mappings = {
                comment_line = '<leader>/',
                comment_visual = '<leader>/'
            },
        })
    end

}
