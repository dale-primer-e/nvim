" Area for plugins
call plug#begin('~/AppData/Local/nvim/plugins')

Plug 'altercation/vim-colors-solarized'

call plug#end()

" inoremap jk <ESC> " remap the jk combo to what escape does
let mapleader = "'"
syntax on " highlight syntax
set number " show line numbers
set noswapfile " disable the swapfile
set hlsearch " highlight all results
set ignorecase " ignore case in search
set incsearch " show search results as you type

" Solarized colourscheme settings
if !exists("g:syntax_on")
	syntax enable
endif
set background=dark
colorscheme solarized
