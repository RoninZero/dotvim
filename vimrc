runtime bundle/pathogen/autoload/pathogen.vim

call pathogen#infect()
call pathogen#infect('bundle/{}')
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

" ---------- NERDTree config section ----------
" Map CTRL-n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Close vim if the only window left
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

syntax enable
set background=dark
colorscheme solarized


