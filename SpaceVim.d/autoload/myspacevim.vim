function! myspacevim#before() abort
  let g:neoformat_run_all_formatters = 1
  let g:neoformat_ruby_prettier = {
        \ 'exe': 'prettier',
        \ 'args': ['--stdin-filepath', '"%:p"'],
        \ 'stdin': 1,
        \ 'try_node_exe': 1,
        \ 'env': ["PRETTIER_RUBY_TIMEOUT_MS=10000"],
        \ }
  let g:neoformat_ruby_standard = {
        \ 'exe': 'standardrb',
        \ 'args': ['--fix', '--stdin', '"%:p"', '2>/dev/null', '|', "awk '/^====================$/{p++;if(p==1){next}}p'"],
        \ 'stdin': 1,
        \ 'stderr': 1
        \ }
  let g:neoformat_enabled_ruby = ['rubocop', 'prettier']
endfunction

function! myspacevim#after() abort
endfunction

func! s:transparent_background()
  highlight Normal guibg=NONE ctermbg=NONE
endf
autocmd ColorScheme * call s:transparent_background()

