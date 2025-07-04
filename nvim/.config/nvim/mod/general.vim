syntax on " highlight syntax
set number relativenumber
set tabstop=2
set shiftwidth=2
set showcmd " this will show the commands written no matter what
set showmatch " this will show matcing bracket or curly braces
set wildmenu " this shows an autocomplete menu when typing
set incsearch " both will help in the search process
set hlsearch
"set autochdir

" open new split panes to right and below
set splitright
set splitbelow
filetype plugin indent on
let mapleader = " "
set nobackup
set nowritebackup
" this is used when you need to directly copy to clipboard from vim
set clipboard+=unnamedplus

let g:coc_global_extensions = ['coc-json', 'coc-eslint', 'coc-tsserver', 'coc-pyright','coc-snippets','coc-json','coc-yaml','coc-sh']
