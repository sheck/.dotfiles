function! custom#before() abort
  let g:neoformat_enabled_javascript = ['eslint_d']
  let g:neoformat_enabled_ruby = ['rubocop']
endfunction

function! custom#after() abort
endfunction
