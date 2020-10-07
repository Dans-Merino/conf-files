syntax on
filetype plugin indent on


" Plugins "
call plug#begin('~/.vim/plugged/')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'othree/yajs.vim'
Plug 'w0ng/vim-hybrid'
Plug 'editorconfig/editorconfig-vim'
Plug 'vim-syntastic/syntastic'
Plug 'davidhalter/jedi-vim' , {'for': 'python'}
Plug 'vim-airline/vim-airline'

call plug#end()

" With a map leader it's possible to do extra key combinations
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

set autoindent
set hlsearch
set incsearch
hi Search ctermbg=Grey
set showcmd

inoremap jk <Esc>
inoremap kj <Esc>
nnoremap <CR> :noh<CR><CR>
set autoread
set so=7
set ruler
set cmdheight=2

set number
colorscheme hybrid
set cursorline
set background=dark

set hidden
" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk



" To open a new empty buffer
nmap <leader>T :enew<cr>

" Move to the next buffer
nmap <leader>l :bnext<CR>

" Move to the previous buffer
nmap <leader>h :bprevious<CR>

" PLUGIN CONF

" status line active all the time
set laststatus=2

" Make omni completion work
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

" Do not appear automatically
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = "0"

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
"
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

let g:airline_section_y  =""
