call plug#begin('../plugged')

" themes
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox' 

" autocompletion 
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" file tree 
Plug 'preservim/nerdtree'

" fuzzy finder 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" golang 
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" vim airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" syntam for toml files
Plug 'cespare/vim-toml'

" git wrapper
Plug 'tpope/vim-fugitive'

call plug#end()
