syntax on 

set clipboard=unnamedplus
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number relativenumber
set nu rnu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey 
call plug#begin('~/.vim/plugged')

"Plug 'tpope/vim-fugitive'
"Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'

Plug 'preservim/nerdtree'
Plug 'Valloric/YouCompleteMe'

"Color Scheme
Plug 'gruvbox-community/gruvbox'

call plug#end()

colorscheme gruvbox
set background=dark

nnoremap <SPACE> <Nop>
let mapleader = " "

map <C-o> :NERDTreeToggle<CR>
