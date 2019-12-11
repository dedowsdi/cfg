call misc#proj#load_map('c')
call mycpp#set_last_target('tt')
let g:mycpp_build_dir = './build/gcc/Debug'
let g:cdef_proj_name = 'test'
let g:gutentags_project_root += ['.vim']
set tags+=/usr/local/source/osg3.6/tags

silent e +/main/+2 main.cpp

let g:ctags_cpp_macros = [
        \ "META_Object(library,name)=",
        \ "META_ValueObject(value, valueObject)=",
        \ ]
