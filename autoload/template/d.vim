function! template#d#module_declaration()
  let module = substitute( substitute( expand("%:r"), "/", ".", "g" ), "^src\\.\\|^source\\.\\|\\.package$", "", "g" )
  normal! gg
  execute "normal! imodule " . module . ";\<CR>\<CR>"
  unlet module
  3
endfunction
