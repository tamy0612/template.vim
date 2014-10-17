function! template#erlang#module_declaration()
  let module = substitute( substitute( expand("%:r"), "/", ".", "g" ), "^src\\.\\|^source\\.", "", "g" )
  normal! gg
  execute "normal! i-module(" . module . ").\<CR>-export([]).\<CR>\<CR>"
  unlet module
  4
endfunction
