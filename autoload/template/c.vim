" insert include guard
function! template#c#include_guard()
  let guard = join( split( toupper( expand("%:gs?\\.?_?:s?^src??:p:.") ), "/" ), "_" )
  normal! gg
  execute "normal! i#ifndef _" . guard . "_"
  execute "normal! o#define _" . guard . "_\<CR>\<CR>\<CR>\<CR>"
  execute "normal! Gi#endif\t/* _" . guard . "_ */"
  unlet guard
  4
endfunction
