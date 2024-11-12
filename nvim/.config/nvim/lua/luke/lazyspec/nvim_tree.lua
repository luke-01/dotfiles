return {
    'nvim-tree/nvim-tree.lua',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        require('nvim-tree').setup({
            view = {
                width = 30,
                side = 'right'
            },
        })

        local api = require('nvim-tree.api')
        vim.keymap.set('n', '<leader>t', api.tree.toggle)
    end,
}
