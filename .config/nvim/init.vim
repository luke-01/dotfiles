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
set nocompatible
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
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rls'

"Visual flourishes
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'

"Colorschemes
Plug 'dracula/vim', {'name': 'dracula'}
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'

call plug#end()

let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

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
"COC Config
inoremap <silent><expr> <c-space> coc#refresh()

"Rust Config
let g:rustfmt_autosave = 1
