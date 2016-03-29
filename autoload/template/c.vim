" insert include guard
function! template#c#include_guard()
  let l:guard = join( split( toupper( expand("%:gs?\\.?_?:s?^src??:p:.") ), "/" ), "_" )
  if exists('g:template#c#project_name')
    let l:guard = toupper(g:template#c#project_name) . '_' . l:guard
  endif
  normal! gg
  execute "normal! i#ifndef " . l:guard . ""
  execute "normal! o#define " . l:guard . "\<CR>\<CR>\<CR>\<CR>"
  execute "normal! Gi#endif\t/* " . l:guard . " */"
  unlet l:guard
  4
endfunction
