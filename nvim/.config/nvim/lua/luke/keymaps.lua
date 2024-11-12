vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.keymap.set('n', '<c-h>', function() vim.cmd.wincmd('h') end)
vim.keymap.set('n', '<c-j>', function() vim.cmd.wincmd('j') end)
vim.keymap.set('n', '<c-k>', function() vim.cmd.wincmd('k') end)
vim.keymap.set('n', '<c-l>', function() vim.cmd.wincmd('l') end)

vim.keymap.set('n', '<leader><leader>', vim.cmd.nohl)

vim.keymap.set('n', '{d', vim.diagnostic.goto_prev)
vim.keymap.set('n', '}d', vim.diagnostic.goto_next)
