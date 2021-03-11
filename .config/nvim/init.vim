syntax on
filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set noswapfile
set undodir=~/.vim/undodir
set undofile
set incsearch
set smartindent
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

tnoremap <Esc> <C-\><C-n>
function! OpenTerminal()
	split term://zsh
	resize 10
endfunction

nnoremap <C-n> :call OpenTerminal()<CR>

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

call plug#begin(stdpath('data') . '/plugged')

"Utilities
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

"Visual flourishes
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'sheerun/vim-polyglot'

"Colorschemes
Plug 'tomasiser/vim-code-dark'
Plug 'joshdick/onedark.vim'

call plug#end()

"Colorscheme Config
let g:lightline = {'colorscheme': 'one',}
colorscheme onedark

"LSP and Completion Config
set completeopt=menu,menuone,noinsert,noselect,preview
let g:completion_matching_strategy_list = ["exact", "substring", "fuzzy"]
let g:completion_enable_auto_popup = 0

lua << EOF
require('lspconfig').clangd.setup{on_attach=require'completion'.on_attach}
EOF

"NERDTree Config
let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusLine = ''

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

"FZF Config
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
    \ 'ctrl-t': 'tab split',
    \ 'ctrl-s': 'split',
    \ 'ctrl-v': 'vsplit'
    \}
