function! custom#before() abort
  let g:neoformat_enabled_html = ['prettier']
  let g:neoformat_enabled_javascript = ['eslint_d']
  let g:neoformat_enabled_ruby = ['rubocop']

  " explicitly excluding 'tidy' as it is not html5 compatible
  let g:neomake_html_enabled_makers = ['htmlhint']
endfunction

function! custom#after() abort
endfunction
