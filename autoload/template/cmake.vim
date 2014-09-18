" insert version
function! template#cmake#version()
  let l:cmake_version = substitute(system('cmake --version|cut -d" " -f3|cut -d"." -f1,2'), "\n", "", "g" )
  normal! gg
  execute "normal! icmake_minimum_required(VERSION " . l:cmake_version . ")\<CR>"
  unlet l:cmake_version
  2
endfunction
