let mapleader=" "

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
