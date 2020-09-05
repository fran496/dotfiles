" Plugins
call plug#begin()  " (Requiere Vim-plug)
Plug 'jiangmiao/auto-pairs'  " Completación de {[(\"...
Plug 'scrooloose/nerdcommenter'  " Comentar codigo
Plug 'scrooloose/nerdtree'  " Arbol de directorios
Plug 'machakann/vim-highlightedyank'  " resaltar area copiada
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " fuzzy finder
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'  " barra de estado
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' } " tema
Plug 'sheerun/vim-polyglot'  " Paquete de lenguajes
Plug 'christoomey/vim-tmux-navigator'  " Navegar entre Tmux y Vim
call plug#end()  " :PlugInstall para instalarlos todos.

" Configuración para plugins
"" Lightline
let g:lightline = {
      \ 'colorscheme': 'challenger_deep',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'absolutepath', 'modified' ] ]
      \ }
      \ }

" Mapeos
" Para fijar al tecla lider como espacio
let mapleader="<space>"

"" Para apagar el resaltado de busqueda
nnoremap <silent> <esc> <cmd>nohl<cr>

"" Para navegar entre pantallas divididas
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" Para plugins
nnoremap <silent> <leader><space> :Files<CR>
nnoremap <C-n> :NERDTreeToggle<CR>

" Configuración
filetype plugin on

set path+=** " Busqueda de archivos en subdirectorios del directorio de trabajo

set backupdir=~/vimtmp/backup,~/ " Dir para archivos backup
set directory=~/vimtmp/swp,~/ " Dir para archivos swp

" Crear directorio para archivos de respaldo si es necesario
if !isdirectory($HOME . "/vimtmp")
  call mkdir($HOME . "/vimtmp/backup", "p")
  call mkdir($HOME . "/vimtmp/swp", "p")
endif

"Activar los colores para el terminal
if has('nvim') || has('termguicolors')
    set termguicolors
endif

color challenger_deep " Fija el esquema de colores del editor
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
