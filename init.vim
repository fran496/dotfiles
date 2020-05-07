" Plugins
call plug#begin()  " (Requiere Vim-plug)
Plug 'davidhalter/jedi-vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }  " Autocompletación
Plug 'zchee/deoplete-jedi'  " Autocompletación para python
" pip install jedi pynvim
Plug 'vim-airline/vim-airline'  " Barra de estado
Plug 'jiangmiao/auto-pairs'  " Completación de {[(\"...
Plug 'scrooloose/nerdcommenter'  " Comentar codigo
Plug 'scrooloose/nerdtree'  " Arbol de directorios
Plug 'sbdchd/neoformat'  "auto formato
" pip install yapf
Plug 'neomake/neomake'  " verificar codigo
" pip install pylint
Plug 'machakann/vim-highlightedyank'  " resaltar area copiada
Plug 'tmhedberg/SimpylFold'  " recoger secciones de codigo
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " fuzzy finder
call plug#end()  " :PluginInstall para instalarlos todos.

" Configuración para plugins
let g:neomake_python_enabled_makers = ['pylint']

let g:deoplete#enable_at_startup = 1

" disable autocompletion, cause we use deoplete for completion
let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"

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

" Para ...
noremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" Configuración
filetype plugin indent on " Activar deteccion de archivos por plugin
set path+=** " Busqueda de archivos en subdirectorios del directorio de trabajo

set backupdir=~/vimtmp/backup,~/ " Dir para archivos backup
set directory=~/vimtmp/swp,~/ " Dir para archivos swp

color base16-default-dark " Fija el esquema de colores del editor
set termguicolors "Activar los colores para el terminal
set colorcolumn=81 " Crea una linea vertical en la columna numero 81

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
    set guifont=Lucida_Console:h11 " Fuente para Windows
    let $XDG_CONFIG_HOME=$HOME " Make sure you cloned nvim-config
  else
    set guifont=Ubuntu\ Mono\ Regular\ 12 " Fuente para UNIX
  endif
endif

if $TERM == 'xterm-256color' " Si el emulador de terminal soporta 256 colores...
  set t_Co=256 " Fijar los colores de vim en el terminal a 256
endif
