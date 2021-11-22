call plug#begin('~/.config/nvim/plugged')

" Vim themes
Plug 'joshdick/onedark.vim', {'as': 'onedark'}
Plug 'EdenEast/nightfox.nvim',  {'as': 'nightfox'}
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }


" Install lightline (a 'powerline' for vim)
Plug 'itchyny/lightline.vim'

" Install 'emmet' for VIM
Plug 'mattn/emmet-vim'

" Treesitter (better syntax highlighting)
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

" Interactive notepad
Plug 'metakirby5/codi.vim'

" Orgmode for VIM
Plug 'jceb/vim-orgmode'

" Date Handler - Orgmode Requirement
Plug 'tpope/vim-speeddating' 

" Plugins to edit markdown files
Plug 'godlygeek/tabular', { 'for': 'markdown' }
Plug 'plasticboy/vim-markdown', { 'for': 'markdown' }
"
" Add images from clipboard in vim
Plug 'ferrine/md-img-paste.vim', { 'for': 'markdown' } 

" Autoclose brackets
Plug 'tpope/vim-surround'

" Visual marks in Vim
Plug 'kshenoy/vim-signature'

" Add git changes support
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

" Monitor coding time
Plug 'wakatime/vim-wakatime'

" Adds autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Adds tabs to vim
Plug 'kyazdani42/nvim-web-devicons'
Plug 'romgrk/barbar.nvim'

" File Tree for vim
Plug 'kyazdani42/nvim-tree.lua'

" Wichkey plugin
Plug 'folke/which-key.nvim'

" Telescope addition
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }

" Adds sessions support
Plug 'glepnir/dashboard-nvim'

" Comment toggler by tpope
Plug 'tpope/vim-commentary'

" Syntax highlight for log files
Plug 'MTDL9/vim-log-highlighting'

call plug#end()
