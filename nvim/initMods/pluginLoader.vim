" vim-plug section
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" this will let fuzzy to use silversearcher-ag to ignore .gitignore files
let $FZF_DEFAULT_COMMAND = 'ag -g ""'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-json', 'coc-eslint', 'coc-tsserver']

"Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'

Plug 'maxmellon/vim-jsx-pretty' 
" installed this by following instruction in their github repository
" this is also necessary for syntax highlighting
Plug 'pangloss/vim-javascript'

Plug 'itchyny/lightline.vim'

Plug 'prettier/vim-prettier'
"Plug 'drewtempelmeyer/palenight.vim'
" called by coc because im using it for autocompletion
"Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'
" no need to import utilsnips
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'caenrique/nvim-toggle-terminal'

"Plug 'glepnir/oceanic-material'

Plug 'bluz71/vim-nightfly-guicolors'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }

" remember that you always need to install the server for the color scheme to
" work properly
Plug 'OmniSharp/omnisharp-vim'
Plug 'jiangmiao/auto-pairs'

Plug 'dart-lang/dart-vim-plugin'

" even though syntastic is installed already in rust but it needs to be explictly
" installed
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'

" setup lsp
Plug 'prabirshrestha/vim-lsp'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'


Plug 'tomlion/vim-solidity'
Plug 'myhere/vim-nodejs-complete'
Plug 'vim-test/vim-test'
Plug 'mhinz/vim-startify', {'branch': 'center'}
Plug 'tpope/vim-fugitive'

Plug 'sheerun/vim-polyglot'
Plug 'codechips/coc-svelte', {'do': 'npm install'}
Plug 'evanleck/vim-svelte'

Plug 'karb94/neoscroll.nvim'
Plug 'preservim/nerdcommenter'

call plug#end()
