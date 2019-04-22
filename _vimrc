set backupdir=~/vimtmp,. " Fija directorio vimtmp (o el de trabajo) como el directorio en el que se almacenaran los archivos de extensión ~ (llamados archivos de respaldo, contienen el archivo que se edito en VIM en el estado en el que se encontraba antes de la edición).
set directory=~/vimtmp,. " Fija directorio vimtmp (o el de trabajo) como el directorio en el que se almacenaran los archivos de extension swp (llamados archivos de intercambio, contiene información del historial de cambios que se han hecho en el archivo).
set writebackup " Activa la creción de archivos de respaldo y swap
syntax enable " Activa el procesamiento de sintaxis
colors dank-neon " Esquema de colores del editor
set tabstop=2 " Determina el número de espacios visibles por tabulación (cuando VIM lee un archivo con tabulaciones).
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
set guioptions -=T "Esconder la barra de herramientas
set guioptions -=m "Esconder barra de menú
set guifont=Consolas:h12 "Fijar fuente para el editor
set encoding=utf-8 "charset del doc por defecto
