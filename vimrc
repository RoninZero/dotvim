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

" ---------- folding config section -----------
"" toggle all fold levels
map <F9> zi

" ---------- NERDTree config section ----------
" Map CTRL-n to toggle NERDTree
map <C-n> :NERDTreeToggle<CR>

" Close vim if the only window left
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ---------- vim-airline stuff ----------
"  Use vim-powerline symbols
let g:airline_powerline_fonts=1

" needed to fix incorrect symbols due to fontconfig issues
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

  " unicode symbols
  let g:airline_left_sep = '»'
  let g:airline_left_sep = '▶'
  let g:airline_right_sep = '«'
  let g:airline_right_sep = '◀'
  let g:airline_symbols.crypt = '🔒'
  let g:airline_symbols.linenr = '␊'
  let g:airline_symbols.linenr = '␤'
  let g:airline_symbols.linenr = '¶'
  let g:airline_symbols.branch = '⎇'
  let g:airline_symbols.paste = 'ρ'
  let g:airline_symbols.paste = 'Þ'
  let g:airline_symbols.paste = '∥'
  let g:airline_symbols.whitespace = 'Ξ'

" ---------- Solarized colorscheme stuff ----------
let g:solarized_termcolors=256

set laststatus=2
syntax enable
set background=dark
colorscheme solarized


