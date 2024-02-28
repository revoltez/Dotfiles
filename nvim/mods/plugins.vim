" vim-plug section
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
" this will let fuzzy to use silversearcher-ag to ignore .gitignore files
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'maxmellon/vim-jsx-pretty' 
" installed this by following instruction in their github repository
" this is also necessary for syntax highlighting
Plug 'pangloss/vim-javascript'
" Plug 'itchyny/lightline.vim'
Plug 'nvim-lualine/lualine.nvim'
" If you want to have icons in your statusline choose one of these
Plug 'nvim-tree/nvim-web-devicons'
Plug 'prettier/vim-prettier'
"Plug 'drewtempelmeyer/palenight.vim'
" called by coc because im using it for autocompletion
"Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'caenrique/nvim-toggle-terminal'
" Plug 'ntk148v/vim-horizon'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'jiangmiao/auto-pairs'
Plug 'rakr/vim-one'
Plug 'rust-lang/rust.vim'
" Plug 'mhartington/oceanic-next'
" Plug 'EdenEast/nightfox.nvim' " Vim-Plug
" setup lsp
"Plug 'prabirshrestha/vim-lsp'
"Plug 'prabirshrestha/asyncomplete.vim'
"Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'ghifarit53/tokyonight-vim'

Plug 'tomlion/vim-solidity'
"Plug 'vim-test/vim-test'
Plug 'mhinz/vim-startify', {'branch': 'center'}
Plug 'tpope/vim-fugitive'

Plug 'codechips/coc-svelte', {'do': 'npm install'}
Plug 'evanleck/vim-svelte'

Plug 'karb94/neoscroll.nvim'
Plug 'preservim/nerdcommenter'

Plug 'nvim-telescope/telescope.nvim'
Plug 'fannheyward/telescope-coc.nvim'

Plug 'nvim-lua/plenary.nvim' 
Plug 'ThePrimeagen/harpoon', {'branch': 'harpoon2'}

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'yardnsm/vim-import-cost', { 'do': 'npm install --production' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()
