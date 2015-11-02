" muttrc
" default leader key is '\'
runtime bundle/pathogen/autoload/pathogen.vim

call pathogen#infect()
call pathogen#infect('bundle/{}')
call pathogen#helptags()


" default settings
set nocompatible
set hidden
set number
set ignorecase           " ignore case when searching
set smartcase            " ignore case if search pattern is all lowercase,
                         "    case-sensitive otherwise
set history=1000         " remember more commands and search history
set undolevels=1000      " use many muchos levels of undo
"set wildignore=*.swp,*.bak,*.pyc,*.class "What does this do?
"set title                " change the terminal's title
"let mapleader='\'
set pastetoggle=<F2>     " Toggle paste mode
" toggle unprintable chars and newlines and report state
nnoremap <F3> :set list! list?<CR>
" toggle line numbers and report state
nmap <F4> :set number! number?<CR>

" Change the listchars (:help listchars to show hidden chars when running :set list
" set listchars=tab:▸\ ,eol:¬       " show tabs and EOL
" set list lcs=trail:·,tab:»·
set listchars=trail:·,precedes:«,extends:»,eol:↲,tab:▸\

set vb t_vb=            " disable bell and turn off visual bell
set ts=4 sts=4 sw=2 expandtab

" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :new $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

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
"let g:airline_symbols.space = "\ua0"

" unicode symbols
"let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '�'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = 'ᴸᴺ' " U+1D38 and U+1D3A Phonetic Extensions
"let g:airline_symbols.linenr = '㏑' " U+33D1 CJK Compatibility (3300 - 3400)
"let g:airline_symbols.linenr = '№' " U+2116 Letterlike Symbols
"let g:airline_symbols.linenr = '↩' " U+21A9 Arrows
"let g:airline_symbols.linenr = 'ᐰ' " U+1430 Unified Canadian Aboriginal Syllabics
"let g:airline_symbols.linenr = '␊' " U+240A Control Pictures
"let g:airline_symbols.linenr = '☰' " U+2630 Miscellaneous Symbols
" Line in Japanese 行 (Gyo)
" Just for fun -- ☠ ☢ ☣
" HOLY SHIT THAT WORKED!!!! U+23F3
"let g:airline_symbols.linenr = '⏳'
"let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" ---------- Solarized colorscheme stuff ----------
let g:solarized_termcolors=256

set laststatus=2
syntax enable
set background=dark
colorscheme solarized

" ------------- My Functions and Macros ------------
" function to trim trailing white space
function TrimWhiteSpace()
  %s/\s*$//
  ''
:endfunction

map <F12> :call TrimWhiteSpace()<CR>
map! <F12> :call TrimWhiteSpace()<CR>
