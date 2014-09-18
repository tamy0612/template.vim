" insert include guard
function! template#c#include_guard()
  let file = toupper( substitute( expand("%:t"), "\\.", "_", "g" ) )
  normal! gg
  execute "normal! i#ifndef _" . file . "_"
  execute "normal! o#define _" . file . "_\<CR>\<CR>\<CR>\<CR>"
  execute "normal! Gi#endif\t/* _" . file . "_ */"
  unlet file
  4
endfunction
