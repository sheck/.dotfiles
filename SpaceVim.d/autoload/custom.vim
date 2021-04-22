function! custom#before() abort
  let g:neoformat_enabled_html = ['prettier']
  let g:neoformat_enabled_javascript = ['eslint_d']
  let g:neoformat_enabled_ruby = ['rubocop']

  let g:neomake_html_enabled_makers = ['']
endfunction

function! custom#after() abort
  NERDTreeClose

  nmap <silent> gd <Plug>(coc-definition)
  nmap <silent> gr <Plug>(coc-references)

  " Search for highlighted word
  vnoremap // y/\V<C-R>"<CR>
  vnoremap \\ y:vimgrep -Q '<C-R>"' **/* <CR>
endfunction
