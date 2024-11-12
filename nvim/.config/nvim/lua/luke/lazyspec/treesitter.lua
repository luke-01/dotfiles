return {
    'nvim-treesitter/nvim-treesitter',
    config = function ()
        require('nvim-treesitter.configs').setup({
            ensure_installed = { 'c', 'lua', 'vim', 'vimdoc', 'markdown', 'markdown_inline', 'query' },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
