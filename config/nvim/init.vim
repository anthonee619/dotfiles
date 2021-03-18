call plug#begin('~/.vim/plugged')
Plug 'neovim/nvim-lspconfig'
Plug 'anott03/nvim-lspinstall'
" telescope & lua
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'

Plug 'nvim-lua/completion-nvim'

Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'

"Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'

"Color Scheme
Plug 'gruvbox-community/gruvbox'

call plug#end()

colorscheme gruvbox
highlight ColorColumn ctermbg=0 guibg=lightgrey 
set background=dark

nnoremap <SPACE> <Nop>
let mapleader = " "
let g:NerdTreeDirArrrowExpandable=''
let g:NerdTreeDirArrrowCollapsible=''

map <C-o> :NERDTreeToggle<CR>

set completeopt=menuone,noinsert,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
