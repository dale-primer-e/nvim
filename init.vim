" Area for plugins
call plug#begin('~/AppData/Local/nvim/plugins')

Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'kien/rainbow_parentheses.vim'
Plug 'spolu/dwm.vim'
Plug 'junegunn/goyo.vim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-lua/telescope.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'pwntester/octo.nvim'
Plug 'catppuccin/nvim'

call plug#end()

" inoremap jk <ESC> " remap the jk combo to what escape does
let mapleader = "'"
syntax on " highlight syntax
set number " show line numbers
set noswapfile " disable the swapfile
set hlsearch " highlight all results
set ignorecase " ignore case in search
set incsearch " show search results as you type
set autoindent

nnoremap <leader>y "*y
nnoremap <leader>Y "*Y
nnoremap <leader>p "*p
nnoremap <leader>P "*P

colorscheme catppuccin-mocha

" Python indentation settings
au BufNewFile, BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

lua << EOF
require"octo".setup{}
EOF
