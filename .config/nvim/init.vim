" nice defaults
syntax on
filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set noswapfile
set undodir=~/.vim/undodir
set undofile
set nohlsearch
set incsearch
set ignorecase
set smartcase
set number
set relativenumber
set nowrap
set splitright
set splitbelow
set noshowmode
set hidden
set nowritebackup
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set termguicolors
set colorcolumn=100
set completeopt+=menuone,noinsert,noselect

let mapleader = " "

" Terminal settings
tnoremap <Esc> <C-\><C-n>

function! OpenTerminal()
    split
    terminal
    resize 10
endfunction

nnoremap <C-\> :call OpenTerminal()<CR>

" Necessary or I will lose my mind
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ' ''<Esc>i
inoremap " ""<Esc>i

vnoremap ( c()<Esc>hp
vnoremap [ c[]<Esc>hp
vnoremap { c{}<Esc>hp
vnoremap ' c''<Esc>hp
vnoremap " c""<Esc>hp

nnoremap <leader>h <C-w>h
nnoremap <leader>j <C-w>j
nnoremap <leader>k <C-w>k
nnoremap <leader>l <C-w>l

"Plugins
call plug#begin(stdpath('data') . '/plugged')

"Utilities
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"Visual Stuff
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'joshdick/onedark.vim'

call plug#end()

"Colorscheme
let g:lightline = {'colorscheme': 'one'}
colorscheme onedark

"LSP and Completion
let g:completion_matching_strategy_list = ["exact", "substring", "fuzzy"]

lua << EOF
require'lspconfig'.clangd.setup{on_attach=require'completion'.on_attach}
require'lspconfig'.cmake.setup{on_attach=require'completion'.on_attach}
require'nvim-treesitter.configs'.setup{highlight = {enable = true}}
EOF
