" Plugins {{{
call plug#begin()
Plug 'jiangmiao/auto-pairs'  " Autocompletación de paréntesis, comillas...
Plug 'scrooloose/nerdcommenter'  " Atajos para comentar codigo
Plug 'scrooloose/nerdtree'  " Arbol de directorios
Plug 'machakann/vim-highlightedyank'  " Resaltar caracteres copiados
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " Buscador de archivos
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'  " Barra de estado ligera
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' } " Colorscheme
Plug 'sheerun/vim-polyglot'  " Paquete de sintaxis de lenguajes
Plug 'christoomey/vim-tmux-navigator'  " Navegar entre Tmux y Vim
call plug#end()

" Configuración para plugins
"" Lightline
let g:lightline = {
      \ 'colorscheme': 'challenger_deep',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'absolutepath', 'modified' ] ]
      \ }
      \ }
" }}}

" Mapeos {{{
"" Fijar la tecla lider como espacio
let g:mapleader="\<Space>"
"" Abrir archivo de configuración
nnoremap <leader>ev <cmd>vsplit $MYVIMRC<cr>
"" Cargar cambios realizados en el archivo de configuración
nnoremap <leader>sv <cmd>source $MYVIMRC<cr>
"" Poner palabra insertada en letras mayusculas
inoremap <C-K> <esc>viwUea
"" Salir del modo de insertar
inoremap jk <esc>
"" Para apagar el resaltado de busqueda
nnoremap <silent> <esc> <cmd>nohlsearch<cr>
"" Para navegar entre pantallas divididas
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" Para Plugins
""" Fzf
nnoremap <silent> <leader><space> :Files<CR>
""" NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
" }}}

" Configuración general {{{
filetype plugin on

" Tipo de folding para archivos vim
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevelstart=0
augroup END


set path=.,** " El path es el directorio de trabajo actual y todos los subdirectorios
set backupdir=~/vimtmp/backup,~/ " Definir directorio para archivos backup
set directory=~/vimtmp/swp,~/ " Definir directorio para archivos swap

"" Crear directorio para archivos de respaldo si es necesario
if !isdirectory($HOME . "/vimtmp")
  call mkdir($HOME . "/vimtmp/backup", "p")
  call mkdir($HOME . "/vimtmp/swp", "p")
endif

set smartindent " Sangría inteligente
set showmatch " Saltar al siguiente parentesis luego de insertarlo
set expandtab " Convertir las tabulaciones en espacios
set tabstop=2 " Fijar cuantos espacios son una tabulación en el archivo
set softtabstop=2 " Fijar el numero de espacios insertados al tabular
set shiftwidth=2 " Fijar el numero de espacios incluidos con la auto-sangría

"" Activar los colores para el terminal
if has('nvim') || has('termguicolors')
    set termguicolors
endif

color challenger_deep " Definir el esquema de colores del editor
set colorcolumn=80 " Crear una linea vertical en la columna numero 81
set nowrap " Que las lineas NO se adapten visualmente al tamaño de la ventana
set sidescroll=5  " Fija cuantos caracteres nos movemos al hacer scroll horizontal
set listchars+=precedes:<,extends:>  " Indicar cuando se esta viendo la linea incompleta

set noshowmode " No indicar modo ya que eso hace lightline
set number " Mostrar el numero de la linea al lado izquierdo
set list " Marcar tabulaciones y espacio sobrante con simbolos
set relativenumber " Enumerar las demas lineas con respecto a la actual.
set cursorline " Sombrear la linea activa
set lazyredraw " Redibujar la pantalla solo cuando sea necesario
" }}}
