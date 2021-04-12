function! custom#before() abort
  let g:neoformat_enabled_html = ['prettier']
  let g:neoformat_enabled_javascript = ['eslint_d']
  let g:neoformat_enabled_ruby = ['rubocop']

  let g:neomake_html_enabled_makers = ['']
endfunction

function! custom#after() abort
  NERDTreeClose
endfunction
