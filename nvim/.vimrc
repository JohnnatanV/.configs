set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set cursorline
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode

call plug#begin('~/.config/nvim/plugged')

" Themes
Plug 'morhetz/gruvbox'
" Plug 'craftzdog/solarized-osaka.nvim'

" IDE
Plug 'easymotion/vim-easymotion'
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mhinz/vim-signify'
Plug 'yggdroot/indentline'

" Syntax
Plug 'sheerun/vim-polyglot'

" Status Bar
Plug 'maximbaz/lightline-ale'
Plug 'itchyny/lightline.vim'

" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'

" Autocomplete
Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Autoformat
Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

call plug#end()

" Gruvbox colors
colorscheme gruvbox
highlight Normal ctermbg=NONE
" colorscheme solarized-osaka

let g:gruvbox_contrast_dark = "medium"
let g:gruvbox_transparent_bg = 2

let mapleader=" "

" Autoformat config
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
let g:prettier#config#tab_width = 2
let g:prettier#config#use_tabs = 'false'

nmap <Leader>p <Plug>(Prettier)

" Autocomplete mapping
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"

" Easymotion maping
nmap <Leader>s <Plug>(easymotion-s2)

" Nerdtree maping
nmap <Leader>nt :NERDTree<CR>
let NERDTreeQuitOnOpen=1

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

nmap <Leader>x :!node %<CR>
