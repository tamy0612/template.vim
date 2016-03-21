" insert version
function! template#cmake#version()
  let l:cmake_version = s:load_cache()
  normal! gg
  execute "normal! icmake_minimum_required(VERSION " . l:cmake_version . ")\<CR>"
  unlet l:cmake_version
  2
endfunction


function! s:load_cache()
  if exists("$CACHE_DIR")
    let l:cache_dir  = expand("$CACHE_DIR/template", ":p")
    let l:cache_file = l:cache_dir.'/cmake_version.cache'
    " When cache exists
    if filereadable(l:cache_file)
      return readfile(l:cache_file)[0]
    endif
    " Otherwise
    echo "Create cache to ".l:cache_file
    if !isdirectory(l:cache_dir)
      call mkdir(l:cache_dir)
    endif
    let l:cmake_version = s:fetch_cmake_version()
    call writefile([l:cmake_version], l:cache_file)
    return l:cmake_version
  endif
  return s:fetch_cmake_version()
endfunction


function! s:fetch_cmake_version()
  return substitute(system('cmake --version|cut -d" " -f3|cut -d"." -f1,2'), "\n", "", "g" )
endfunction
