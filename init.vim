" Area for plugins
call plug#begin('~/AppData/Local/nvim/plugins')

Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'preservim/vim-markdown'
Plug 'kien/rainbow_parentheses.vim'
Plug 'spolu/dwm.vim'

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
" if !exists("g:syntax_on")
	" syntax enable
" endif
" set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized

" Solarized colourscheme settings 
if !exists("g:syntax_on") 
	syntax enable 
endif 
set background=dark 
let g:solarized_termcolors=256 
colorscheme solarized

" Gruvbox colourscheme settings 
" autocmd vimenter * ++nested colorscheme gruvbox

" vim-markdown settings
" let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_folding_level = 6
