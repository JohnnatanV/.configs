let g:coc_global_extensions = ['coc-emmet', 'coc-eslint' , 'coc-json', 'coc-git', 'coc-html', 'coc-css', 'coc-tsserver', 'coc-html-css-support', 'coc-prettier', 'coc-sh', 'coc-tslint-plugin', 'coc-snippets']

" Mappings Go To's
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Autocomplete mapping
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
inoremap <expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"

if has('nvim')
	inoremap <silent><expr> <TAB> coc#refresh()
else
	inoremap <silent><expr> <c-@> coc#refresh()
endif

" Mappings Diagnostics
nnoremap <silent> d[ <Plug>(coc-diagnostics-prev)
nnoremap <silent> d] <Plug>(coc-diagnostics-next)

" Mappings Hove Documentation
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
	if CocAction('hasProvider', 'hover')
		call CocActionAsync('doHover')
	else
		call feedKeys('K', 'in')
	endif
endfunction

