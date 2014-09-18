augroup TemplateVim
  autocmd!
  autocmd BufNewFile *.h,*.hpp call template#c#include_guard()
  autocmd BufNewFile CMakeLists.txt call template#cmake#version()
augroup END
