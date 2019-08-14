" PATHOGEN, Adds to runtimepath all the installed plugins
" execute pathogen#infect()

" MY CONFIG
filetype plugin indent on " Activar deteccion de archivos por plugin
set path+=** " Busqueda de archivos en subdirectorios del directorio de trabajo

set backup " Activa la creacion de archivos de respaldo
set writebackup " Borrar respaldo luego de escribir el archivo
set backupdir=~/vimtmp/backup,~/ " Dir para archivos backup
set directory=~/vimtmp/swp,~/ " Dir para archivos swp 

color tokyo-metro " Fija el esquema de colores del editor
set termguicolors "Activar los colores para el terminal
set colorcolumn=81 " Crea una linea vertical en la columna numero 81

set expandtab " Convierte tabulacion en espacios
set tabstop=2 " Determina el numero de espacios visibles por tabulacion
set shiftwidth=2 " Numero de espacios incluidos al hacer enter
set softtabstop=2 " Determina el numero de espacios insertados al tabular

set number " Muestra el numero de la linea al lado izquierdo del buffer
set cursorline " Sombrea la linea activa
set lazyredraw " Re-dibuja la pantalla solo cuando sea necesario
set relativenumber " Enumera las demas lineas con respecto a la actual.
set list " Marca tabulaciones y trailing space con simbolos
set listchars=tab:>-,trail:-,nbsp:_ " Los chars que marcan tabs, ts y nbsp

set showmatch " Resalta el interior de un bloque de codigo
set incsearch " Dynamic searching

if has("gui_running") " Si el usuario esta usando la GUI, fijar esta config...
  set guioptions-=T "Esconder la barra de herramientas
  set guioptions-=m "Esconder barra de menu
  set guioptions-=r "Esconder scroll bar derecha
  if has("win32") " Si el usuario esta usando OS Windows...
    set guifont=Lucida_Console:h11 " Fuente para Windows
    let $XDG_CONFIG_HOME=$HOME " Make sure you cloned nvim-config
  else
    set guifont=Ubuntu\ Mono\ Regular\ 12 " Fuente para UNIX
  endif
endif

if $TERM == "xterm-256color" " Si el emulador de terminal soporta 256 colores...
  set t_Co=256 " Fijar los colores de vim en el terminal a 256
endif

" Atajos para navegar mas facil entre pantallas divididas
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
