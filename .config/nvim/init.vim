syntax on 

set clipboard=unnamedplus
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
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
"Plug 'Valloric/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Color Scheme
Plug 'gruvbox-community/gruvbox'

" syntax
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'jparise/vim-graphql'

call plug#end()

colorscheme gruvbox
set background=dark

nnoremap <SPACE> <Nop>
let mapleader = " "

map <C-o> :NERDTreeToggle<CR>
