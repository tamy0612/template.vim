augroup TemplateVim
  autocmd!
  autocmd BufNewFile *.h,*.hpp,*tcc call template#c#include_guard()
  autocmd BufNewFile *.d call template#d#module_declaration()
  autocmd BufNewFile *.erl call template#erlang#module_declaration()
  autocmd BufNewFile CMakeLists.txt call template#cmake#version()
augroup END
