" vim-plug section
call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'maxmellon/vim-jsx-pretty' 
Plug 'nvim-lualine/lualine.nvim'
Plug 'prettier/vim-prettier'
Plug 'mlaursen/vim-react-snippets'
Plug 'grvcoelho/vim-javascript-snippets'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'caenrique/nvim-toggle-terminal'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'jiangmiao/auto-pairs'
Plug 'rakr/vim-one'
Plug 'tomlion/vim-solidity'
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
Plug 'startup-nvim/startup.nvim'
Plug 'nvim-pack/nvim-spectre'
call plug#end()
