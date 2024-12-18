local tab_size = 4

vim.opt.clipboard = 'unnamedplus'
vim.opt.colorcolumn = '100'
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.laststatus = 3
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = tab_size
vim.opt.signcolumn = 'yes'
vim.opt.smartcase = true
vim.opt.softtabstop = tab_size
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.tabstop = tab_size
vim.opt.termguicolors = true
vim.opt.undofile = true
vim.opt.updatetime = 40
vim.opt.wrap = false

vim.diagnostic.config({ update_in_insert = true })
