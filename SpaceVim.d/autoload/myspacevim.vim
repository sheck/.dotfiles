function! myspacevim#before() abort
  " let g:srcery_bg_passthrough = 1
  let g:neoformat_enabled_ruby = ['standard', 'rubocop']
endfunction

function! myspacevim#after() abort
endfunction

func! s:transparent_background()
  highlight Normal guibg=NONE ctermbg=NONE
endf
autocmd ColorScheme * call s:transparent_background()

