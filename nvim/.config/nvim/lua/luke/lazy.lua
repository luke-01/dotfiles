local lazy_path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazy_path) then
    local out = vim.fn.system({
        'git',
        'clone',
        '--filter=blob:none',
        '--branch=stable',
        'https://github.com/folke/lazy.nvim',
        lazy_path
    })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { 'Failed to clone lazy.nvim\n', 'ErrorMsg' },
            { out, 'WarningMsg' },
        })
        return 0
    end
end

vim.opt.runtimepath:prepend(lazy_path)

require('lazy').setup({ spec = { import = 'luke.lazyspec' } })

