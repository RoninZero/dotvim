call pathogen#incubate()
call pathogen#helptags()

set hidden
set number
set vb t_vb=
set ts=4 sts=4 sw=2 expandtab


if has("autocmd")
    filetype plugin indent on
    set autoindent
    set foldmethod=indent
    au FileType python setlocal expandtab shiftwidth=4 softtabstop=4 colorcolumn=80 ai nu nowrap cul
endif


syntax enable
set background=dark
colorscheme solarized


