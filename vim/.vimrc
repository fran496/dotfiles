" PATHOGEN, A�ade al runtimepath todos los plugin que instale
execute pathogen#infect()

" MI CONFIGURACI�N
set nocompatible " Vi IMproved activado!
filetype plugin indent on " Activar detecci�n de archivos por plugin
set encoding=utf-8 "charset del doc por defecto
set path+=** " Busqueda de archivos en subdirectorios del directorio de trabajo

set backup " Activa la creaci�n de archivos de respaldo
set writebackup " Borrar respaldo luego de escribir el archivo
set backupdir=~/vimtmp/backup,. " Fija el directorio donde se almaceran los ~
set directory=~/vimtmp/swap,. " Fija el directorio donde se almacenaran los swap

syntax on " Activa el procesamiento de sintaxis
color kuroi " Fija el esquema de colores del editor
set background=dark " Fija el fondo del colorscheme a oscuro (Si es necesario)
set termguicolors "Activar los colores para el terminal
set colorcolumn=81 " Crea una linea vertical en la columna n�mero 81

set expandtab " Convierte tabulacion en espacios
set tabstop=2 " Determina el n�mero de espacios visibles por tabulaci�n 
set shiftwidth=2 " N�mero de espacios incluidos al hacer enter
set softtabstop=2 " Determina el n�mero de espacios insertados al tabular
set autoindent  "tabulaci�n autom�tica

set showcmd " Muestra el ultimo comando realizado
set number " Muestra el n�mero de la l�nea al lado izquierdo del buffer
set showmatch " Sombrea el ([{ correspondiente al seleccionado
set cursorline " Sombrea la linea activa
set lazyredraw " Re-dibuja la pantalla s�lo cuando sea necesario
set relativenumber " Enumera las dem�s lineas con respecto a la actual.
set list " Marca tabulaciones y trailing space con simbolos 
set listchars=tab:>-,trail:-,nbsp:_ " Los chars que marcan tabs, ts y nbsp

set showmatch " Resalta el interior de un bloque de c�digo
set incsearch " Busca a medida que se a�aden caracteres al patron
set hlsearch " Resalta las coincidencias encontradas tras una busqueda
set wildmenu " Activa la autocompletaci�n de nombres de archivos en un menu.

if has("gui_running") " Si el usuario est� usando la GUI, fijar esta config...
  set guioptions-=T "Esconder la barra de herramientas
  set guioptions-=m "Esconder barra de men�
  set guioptions-=r "Esconder barra de scroll derecha
  if has("gui_win32") " Si el usuario est� usando OS Windows...
    set guifont=Lucida_Console:h11 " Fuente para Windows
  else " Si no...
    set guifont=Ubuntu\ Mono\ Regular\ 12 " Fuente para UNIX
  endif
endif

if $TERM == "xterm-256color" " Si el emulador de terminal soporta 256 colores...
  set t_Co=256 " Fijar los colores de vim en el terminal a 256
endif

" Atajos para navegar m�s facil entre pantallas divididas
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
