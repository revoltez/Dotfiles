" vim-plug section
call plug#begin('~/.config/nvim/plugged')
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'scrooloose/nerdtree'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'ap/vim-css-color'
Plug 'nvim-lualine/lualine.nvim'
Plug 'honza/vim-snippets'
Plug 'rbgrouleff/bclose.vim'
Plug 'francoiscabrol/ranger.vim'
Plug 'caenrique/nvim-toggle-terminal'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
Plug 'jiangmiao/auto-pairs'
Plug 'tomlion/vim-solidity'
Plug 'codechips/coc-svelte', {'do': 'npm install'}
Plug 'evanleck/vim-svelte'
Plug 'preservim/nerdcommenter'
Plug 'nvim-lua/plenary.nvim' 
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'ThePrimeagen/harpoon', {'branch': 'harpoon2'}
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'christoomey/vim-tmux-navigator'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'startup-nvim/startup.nvim'
Plug 'nvim-pack/nvim-spectre'
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
" Setting up avante
" Deps
Plug 'stevearc/dressing.nvim'
Plug 'MunifTanjim/nui.nvim'
" Optional deps
Plug 'nvim-tree/nvim-web-devicons' "or Plug 'echasnovski/mini.icons'
Plug 'HakonHarnes/img-clip.nvim'
Plug 'zbirenbaum/copilot.lua'
" Yay, pass source=true if you want to build from source
Plug 'yetone/avante.nvim', { 'branch': 'main', 'do': 'make' }
Plug 'brenoprata10/nvim-highlight-colors'

call plug#end()
