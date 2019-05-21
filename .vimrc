" Administrador de paquetes Vundle
set nocompatible              " be IMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" more Plugin commands
" ...

call vundle#end()            " required
filetype plugin indent on    " required

" Mi configuraci�n estandar
set encoding=utf-8 "charset del doc por defecto
set path+=** " Permitir la busqueda de archivos en subdirectorios del directorio de trabajo

set backupdir=~/vimtmp/backup,. " Fija directorio backup de vimtmp (o el de trabajo) como el directorio en el que se almacenaran los archivos de extensi�n ~ (llamados archivos de respaldo, contienen el archivo que se edito en VIM en el estado en el que se encontraba antes de la edici�n).
set directory=~/vimtmp/swap,. " Fija directorio swap de vimtmp (o el de trabajo) como el directorio en el que se almacenaran los archivos de extension swp (llamados archivos de intercambio, contiene informaci�n del historial de cambios que se han hecho en el archivo).
set writebackup " Al editar un archivo, crea un archivo de respaldo mientras se edita pero la borra al escribir 
set backup " Activa la creaci�n de archivos de respaldo

syntax on " Activa el procesamiento de sintaxis
color base16-default-dark " Fija el esquema de colores del editor
set background=dark " Fija el fondo del colorscheme a oscuro (Si es necesario)
set termguicolors "Activar los colores para el terminal
set colorcolumn=81 " Crea una linea vertical en la columna n�mero 81

set expandtab " Convierte tabulacion en espacios
set tabstop=2 " Determina el n�mero de espacios visibles por tabulaci�n (cuando VIM lee un archivo con tabulaciones).
set shiftwidth=2 " N�mero de espacios incluidos al hacer enter
set softtabstop=2 " Determina el n�mero de espacios insertados al tabular durante la edici�n.
set autoindent  "tabulaci�n autom�tica

set showcmd " Muestra el ultimo comando realizado
set number " Muestra el n�mero de la l�nea al lado izquierdo del buffer
set cursorline " Sombrea la linea activa
set lazyredraw " Re-dibuja la pantalla s�lo cuando sea necesario
set relativenumber "Enumera las dem�s lineas con respecto a la actual.
set listchars=tab:>-,trail:-,nbsp:_ " Determina cuales son los chars que marcan tabulaciones y trailing spaces
set list " Marca tabulaciones y trailing space con simbolos 

set showmatch " Resalta el interior de un bloque de c�digo
set incsearch " Permite buscar a medida que se insertan caracteres en la busqueda
set hlsearch " Resalta las coincidencias encontradas tras una busqueda
set wildmenu " Activa la autocompletaci�n de nombres de archivos en un menu.

if has("gui_running") " Si el usuario est� usando la GUI, fijar esta config...
  set guioptions-=T "Esconder la barra de herramientas
  set guioptions-=m "Esconder barra de men�
  if has("gui_win32") " Si el usuario est� usando OS Windows...
    set guifont=Lucida_Console:h12 " Fijar fuente de la GUI segun el formato de windows
  else " Si no...
    set guifont=Ubuntu\ Mono\ Regular\ 12 " Fijar cuente de la GUI segun el formato de UNIX
  endif
endif

if $TERM == "xterm-256color" " Si el emulador de terminal soporta 256 colores...
  set t_Co=256 " Fijar los colores de vim en el terminal a 256
endif

" Atajos para navegar m�s eficazmente entre pantallas divididas
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
