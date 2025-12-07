"===============================================================
"  My Vim configuration
"===============================================================

"---------------------------------------------------------------
" Apariencia y comportamiento básico
"---------------------------------------------------------------

set number                                              " muestra los números de línea  
set numberwidth=4                                       " ancho mínimo del campo de número de línea 
set colorcolumn=80                                      " muestra una línea vertical en la columna 80
set mouse=a                                             " permite usar el mouse para mover el cursor y seleccionar texto 
set scrolloff=2                                         " deja siempre 2 líneas visibles alreder del cursor
set showmatch                                           " resulta el paréntesis del sistema o llave coincidente
set clipboard=unnamedplus                               " usa el portapapeles del sistema (permite copiar/pegar entre Vim y el sistema)
" set cursorline                                        " resalta la línea actual
" set termguicolors                                     " habilita colores verdaderos (24 bits) si el terminal los soporta

"---------------------------------------------------------------
" Configuraciones de búsqueda
"---------------------------------------------------------------

set ignorecase                                          " ignora mayúsculas/minusculas al buscar
set smartcase                                           " si la búsqueda contiene mayúsculas, ignora y distingue mayúsculas
set hlsearch                                            " resalta todas las coincidencias de la búsqueda
set incsearch                                           " muestra resultados de búsqueda de forma incremental (mientras escribes)

"--------------------------------------------------------------
"  Tabulación e indentación
"--------------------------------------------------------------

set tabstop=2                                           " define cuantos espacios mide \t
set softtabstop=2                                       " define cuantos espacios se insertan o eliminan al editar un \t
set shiftwidth=2                                        " define cuantos espacios debe de usar el autoidentado
set expandtab                                           " convierte carácteres de tabulación a espacios cuando se inserta

set autoindent                                          " identación automática al presionar enter
set smartindent                                         " identación inteligente, la identación es a nivel de código de programación
set smarttab                                            " usa shiftwidth para el \t al inicio de una línea

"--------------------------------------------------------------
"  Resaltado y detección de archvos
"--------------------------------------------------------------

syntax enable                                           " activa el resaltado de sintaxis
filetype plugin indent on                               " habilita detección de tipo de archivo, plugins y reglas de indentación asociadas

"---------------------------------------------------------------
"  Manejo de saltos de línea (wrap)
"---------------------------------------------------------------

set nowrap                                              " no hace saltos de línea
" set wrap                                              " activa el salto de línea visual
set linebreak                                           " corta líneas solo entre palabras, no en medio
set breakindent                                         " mantiene la indentación al mostrar líneas partidas
set breakindentopt=shift:2                              " agrega un margen visual al comienzo de las líneas partidas
set showbreak=↳\                                        " símbolo que se muestra al inicio de una línea partida

"===============================================================
"  Keyboard shortcuts
"===============================================================

let mapleader = " "
set timeoutlen=600
set ttimeoutlen=10

inoremap jj <Esc>

"---------------------------------------------------------------
" Edición de archivos 
"---------------------------------------------------------------

nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>q! :q!<CR>

"---------------------------------------------------------------
" Edición de texto 
"---------------------------------------------------------------

" -- mover las líneas
nnoremap <A-Down> :m .+1<CR>==
nnoremap <A-Up>   :m .-2<CR>==

" -- duplicar líneas
nnoremap <C-A-Down> yyp
nnoremap <C-A-Up> yyP

" -- selección de texto
nnoremap <Leader>a ggVG 

" -- desactivar resaltado de palabras encontradas
nnoremap <silent> <Esc> :nohlsearch<CR>

"---------------------------------------------------------------
" Desplazamiento dentro de la ventana 
"---------------------------------------------------------------

nnoremap <S-ScrollWheelUp> 6zh
nnoremap <S-ScrollWheelDown> 6zl

nnoremap <C-h> 4zh
nnoremap <C-l> 4zl
nnoremap <C-k> 4<C-y>
nnoremap <C-j> 4<C-e>

"---------------------------------------------------------------
" Navegación entre pestañas
"---------------------------------------------------------------

nnoremap <Leader>h 10<C-w><
nnoremap <Leader>l 10<C-w>>
nnoremap <Leader>k 5<C-w>+
nnoremap <Leader>j 5<C-w>-

nnoremap <Leader>s :split<CR>
nnoremap <Leader>v :vsplit<CR>

"---------------------------------------------------------------
" Formateo de código
"---------------------------------------------------------------

" Alterna el 'wrap' Y la 'colorcolumn' con <leader>z
nnoremap <leader>z :set wrap! \| let &colorcolumn = (&colorcolumn == "" ? "80" : "")<CR>

nnoremap <Leader>i :Autoformat<CR>

" autocmd BufWrite * :Autoformat

"---------------------------------------------------------------
" Atajos de teclado de plugins
"---------------------------------------------------------------

nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

"===============================================================
"  Plugins
"===============================================================

" -- identline
let g:indentLine_color_term = 239
" let g:indentLine_char = ┆'
let g:indentLine_setConceal = 0

" -- vim-airline 
let g:airline_theme='simple'

" -- nerdcommenter 
let g:NERDSpaceDelims = 1

" -- vim-autoformat 
" let g:autoformat_verbosemode = 1
" let g:formatdef_clangformat_c = '"clang-format"'
" let g:formatters_c = ['clangformat_c']
let g:formatters_markdown = ['prettier']

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'yggdroot/indentline'
Plug 'scrooloose/nerdcommenter'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
" Plug 'ervandew/supertab'
Plug 'chiel92/vim-autoformat'
Plug 'mg979/vim-visual-multi'

call plug#end()

"===============================================================
"  Estilos
"===============================================================

highlight Search cterm=NONE ctermfg=black ctermbg=yellow gui=NONE guifg=black guibg=yellow

"===============================================================
" Deshabilitación
"===============================================================

autocmd FileType json,jsonc IndentLinesDisable
