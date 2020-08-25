" Plugins
call plug#begin()  " (Requiere Vim-plug)
Plug 'jiangmiao/auto-pairs'  " Completación de {[(\"...
Plug 'scrooloose/nerdcommenter'  " Comentar codigo
Plug 'scrooloose/nerdtree'  " Arbol de directorios
Plug 'sbdchd/neoformat'  "auto formato
Plug 'machakann/vim-highlightedyank'  " resaltar area copiada
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'  " barra de estado
Plug 'cocopon/iceberg.vim'  "Tema
Plug 'sheerun/vim-polyglot'  " Paquete de lenguajes
Plug 'christoomey/vim-tmux-navigator'  " Navegar entre Tmux y Vim
call plug#end()  " :PlugInstall para instalarlos todos.

" Configuración para plugins
" Lightline
let g:lightline = {
      \ 'colorscheme': 'iceberg',
      \ }

" Enable alignment
let g:neoformat_basic_format_align = 1
" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1
" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" Remapeo de comandos
" Para navegar entre pantallas divididas
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Para fzf
nnoremap <leader>fi :Files<CR>
" Para NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
" Para ...
noremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Configuración
filetype plugin on

let mapleader="\<Space>"  " Tecla lider

set path+=** " Busqueda de archivos en subdirectorios del directorio de trabajo

set backupdir=~/vimtmp/backup,~/ " Dir para archivos backup
set directory=~/vimtmp/swp,~/ " Dir para archivos swp

set termguicolors "Activar los colores para el terminal
color iceberg " Fija el esquema de colores del editor
set colorcolumn=80 " Crea una linea vertical en la columna numero 81

set expandtab " Convierte tabulacion en espacios
set tabstop=2 " Determina el numero de espacios visibles por tabulacion
set shiftwidth=2 " Numero de espacios incluidos al hacer enter
set softtabstop=2 " Determina el numero de espacios insertados al tabular

set number " Muestra el numero de la linea al lado izquierdo del buffer
set list " Marca tabulaciones y trailing space con simbolos
set listchars=tab:>-,trail:-,nbsp:_ " Los chars que marcan tabs, ts y nbsp
set cursorline " Sombrea la linea activa
set lazyredraw " Re-dibuja la pantalla solo cuando sea necesario
set relativenumber " Enumera las demas lineas con respecto a la actual.

set showmatch " Resalta el interior de un bloque de codigo

if has('gui_running') " Si el usuario esta usando la GUI, fijar esta config...
  set guioptions-=T "Esconder la barra de herramientas
  set guioptions-=m "Esconder barra de menu
  set guioptions-=r "Esconder scroll bar derecha
  if has('win32') " Si el usuario esta usando OS Windows...
    " Crea la siguiente ruta: ~\AppData\Local\nvim\init.vim
    set guifont=Fira\ Code " Fuente para Windows
  else
    set guifont=Fira_Code " Fuente para UNIX
  endif
endif
