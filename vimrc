call pathogen#incubate()
call pathogen#helptags()

set hidden
set number
set vb t_vb=
set ts=4 sts=4 sw=2 expandtab
syntax on


if has("autocmd")
    filetype plugin indent on
endif
