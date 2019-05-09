" Vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Mi configuración estandar
set nocompatible " Evitar que vim sea compatible con vi y de esta forma, activar todas las mejoras de vim. Esta config es necesaria para Vundle.
set path+=** " Permitir la busqueda de archivos en subdirectorios del directorio de trabajo
set backupdir=~/vimtmp/backup,. " Fija directorio backup de vimtmp (o el de trabajo) como el directorio en el que se almacenaran los archivos de extensión ~ (llamados archivos de respaldo, contienen el archivo que se edito en VIM en el estado en el que se encontraba antes de la edición).
set directory=~/vimtmp/swap,. " Fija directorio swap de vimtmp (o el de trabajo) como el directorio en el que se almacenaran los archivos de extension swp (llamados archivos de intercambio, contiene información del historial de cambios que se han hecho en el archivo).
set writebackup " Al editar un archivo, crea un archivo de respaldo mientras se edita pero la borra al escribir 
set backup " Activa la creación de archivos de respaldo
syntax on " Activa el procesamiento de sintaxis
color base16-outrun-dark "Esquema de colores del editor
set tabstop=2 " Determina el número de espacios visibles por tabulación (cuando VIM lee un archivo con tabulaciones).
set shiftwidth=2 " Número de espacios incluidos al hacer enter
set softtabstop=2 " Determina el número de espacios insertados al tabular durante la edición.
set showcmd " Muestra el ultimo comando realizado
set expandtab " Convierte tabulacion en espacios
set number " Muestra el número de la línea al lado izq
set cursorline " Sombrea la linea activa
filetype indent on " Activa la detección de tipos de archivos (Script de JS, Python, R...) y carga los archivos de tabulación correspondientes con el lenguaje.
set wildmenu " Activa la autocompletación de nombres de archivos en un menu.
set lazyredraw " Re-dibuja la pantalla sólo cuando sea necesario
set showmatch " Resalta el interior de un bloque de código
set incsearch " Permite buscar a medida que se insertan caracteres en la busqueda
set hlsearch " Resalta las coincidencias encontradas tras una busqueda
set encoding=utf-8 "charset del doc por defecto
set autoindent  "tabulación automática
set relativenumber "Enumera las demás lineas con respecto a la actual.
set termguicolors "Activar los colores para el terminal
if has("gui_running") " Si el usuario está usando la GUI, fijar esta config
  set guioptions-=T "Esconder la barra de herramientas
  set guioptions-=m "Esconder barra de menú
  if has("gui_win32") " Si el usuario está usando OS Windows 
    set guifont=Lucida_Console:h12 " Fijar fuente de la GUI segun el formato de windows
  else
    set guifont=Ubuntu\ Mono\ Regular\ 12 " Fijar cuente de la GUI segun el formato de UNIX
  endif
endif

" Atajos para navegar más eficazmente entre pantallas divididas
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
