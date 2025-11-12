"===============================================================
"  My Vim configuration
"===============================================================

set number
set numberwidth=1
set colorcolumn=80
" set cursorline
" set showmatch
set scrolloff=5

"-- 2 espacios --
set tabstop=2                           " define cuantos espacios mide \t
set softtabstop=2                       " define cuantos espacios se insertan o eliminan al editar un \t
set shiftwidth=2                        " define cuantos espacios debe de usar el autoidentado
set expandtab                           " convierte carácteres de tabulación a espacios cuando se inserta
set autoindent                          " identación automática al presionar enter
set smartindent                         " identación inteligente, la identación es a nivel de código de programación

"-- Activar resaltado de sintaxis --
syntax enable
filetype plugin indent on

"-- Saltos de línea (soft wrap) --
set nowrap
" set wrap
" set linebreak
" set breakindent
" set breakindentopt=shift:2
" set showbreak=↳\

"===============================================================
"  Keyboard shortcuts
"==============================================================

let mapleader = " "
set timeoutlen=300
set ttimeoutlen=10

inoremap jj <Esc>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>q! :q!<CR>

nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

nnoremap <Leader>h 10<C-w><
nnoremap <Leader>l 10<C-w>>
nnoremap <Leader>k 5<C-w>+
nnoremap <Leader>j 5<C-w>-

nnoremap <Leader>s :split<CR>
nnoremap <Leader>v :vsplit<CR>

nnoremap <Leader>i :Autoformat<CR>
" autocmd BufWrite * :Autoformat

"===============================================================
"  Plugins
"===============================================================

let g:indentLine_color_term = 239
" let g:indentLine_char = ┆'

let g:airline_theme='simple'

let g:NERDSpaceDelims = 1

" -- Configuraciones para vim-autoformat --
" let g:autoformat_verbosemode = 1
" let g:formatdef_clangformat_c = '"clang-format"'
" let g:formatters_c = ['clangformat_c']

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'ervandew/supertab'
Plug 'chiel92/vim-autoformat'

call plug#end()
