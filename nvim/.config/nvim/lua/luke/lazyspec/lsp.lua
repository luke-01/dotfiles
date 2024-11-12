return {
    'neovim/nvim-lspconfig',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        { 'folke/lazydev.nvim', config = true },
        { 'j-hui/fidget.nvim', config = true }
    },
    config = function()
        local lspconfig = require('lspconfig')

        local caps = require('cmp_nvim_lsp').default_capabilities()

        lspconfig.lua_ls.setup({ capabilities = caps })
        lspconfig.clangd.setup({ capabilities = caps })

        local lsp_group = vim.api.nvim_create_augroup('LukeLspGroup', { clear = true  })
        vim.api.nvim_create_autocmd('LspAttach', {
            group = lsp_group,
            callback = function(event)
                vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { buffer = event.buf })
                vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, { buffer = event.buf })
                vim.keymap.set('n', 'K', vim.lsp.buf.hover, { buffer = event.buf })
                vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, { buffer = event.buf })
                vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, { buffer = event.buf })
            end
        })
    end
}
