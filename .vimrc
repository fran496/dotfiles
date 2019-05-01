set backupdir=~/vimtmp,. " Fija directorio vimtmp (o el de trabajo) como el directorio en el que se almacenaran los archivos de extensi�n ~ (llamados archivos de respaldo, contienen el archivo que se edito en VIM en el estado en el que se encontraba antes de la edici�n).
set directory=~/vimtmp,. " Fija directorio vimtmp (o el de trabajo) como el directorio en el que se almacenaran los archivos de extension swp (llamados archivos de intercambio, contiene informaci�n del historial de cambios que se han hecho en el archivo).
set writebackup " Activa la creci�n de archivos de respaldo y swap
syntax on " Activa el procesamiento de sintaxis
color base16-default-dark "Esquema de colores del editor
set tabstop=2 " Determina el n�mero de espacios visibles por tabulaci�n (cuando VIM lee un archivo con tabulaciones).
set shiftwidth=2 " N�mero de espacios incluidos al hacer enter
set softtabstop=2 " Determina el n�mero de espacios insertados al tabular durante la edici�n.
set showcmd " Muestra el ultimo comando realizado
set expandtab " Convierte tabulacion en espacios
set number " Muestra el n�mero de la l�nea al lado izq
set cursorline " Sombrea la linea activa
filetype indent on " Activa la detecci�n de tipos de archivos (Script de JS, Python, R...) y carga los archivos de tabulaci�n correspondientes con el lenguaje.
set wildmenu " Activa la autocompletaci�n de nombres de archivos en un menu.
set lazyredraw " Re-dibuja la pantalla s�lo cuando sea necesario
set showmatch " Resalta el interior de un bloque de c�digo
set incsearch " Permite buscar a medida que se insertan caracteres en la busqueda
set hlsearch " Resalta las coincidencias encontradas tras una busqueda
set encoding=utf-8 "charset del doc por defecto
set autoindent  "tabulaci�n autom�tica
set relativenumber "Enumera las dem�s lineas con respecto a la actual.
set termguicolors "Activar los colores para el terminal
if has("gui_running") " Si el usuario est� usando la GUI, fijar esta config
  set guioptions-=T "Esconder la barra de herramientas
  set guioptions-=m "Esconder barra de men�
  if has("gui_win32") " Si el usuario est� usando OS Windows 
    set guifont=Lucida_Console:h12 " Fijar fuente de la GUI segun el formato de windows
  else
    set guifont=Ubuntu\ Mono\ Regular\ 12 " Fijar cuente de la GUI segun el formato de UNIX
  endif
endif