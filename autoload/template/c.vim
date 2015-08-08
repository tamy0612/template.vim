" insert include guard
function! template#c#include_guard()
  let guard = join( split( toupper( expand("%:gs?\\.?_?:s?^src??:p:.") ), "/" ), "_" )
  normal! gg
  execute "normal! i#ifndef " . guard . ""
  execute "normal! o#define " . guard . "\<CR>\<CR>\<CR>\<CR>"
  execute "normal! Gi#endif\t/* " . guard . " */"
  unlet guard
  4
endfunction
