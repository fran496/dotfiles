" Plugins {{{
call plug#begin()
Plug 'jiangmiao/auto-pairs'  " Autocompletación de paréntesis, comillas...
Plug 'machakann/vim-highlightedyank'  " Resaltar caracteres copiados
Plug 'itchyny/lightline.vim'  " Barra de estado ligera
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' } " Colorscheme
Plug 'sheerun/vim-polyglot'  " Paquete de sintaxis de lenguajes
Plug 'christoomey/vim-tmux-navigator'  " Navegar entre Tmux y Vim
call plug#end()
"}}}

" Configuración de plugins {{{
"" lightline
let g:lightline = {
      \ 'colorscheme': 'challenger_deep',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'absolutepath', 'modified' ] ]
      \ }
      \ }

"" netrw
let g:netrw_banner = 0 " Eliminar el encabezado de ayuda
let g:netrw_browse_split = 4 " Abrir archivo seleccionado en buffer vertical
let g:netrw_altv = 1
let g:netrw_winsize = 25 " Que el buffer del explorador solo tome un 25% de la ventana
"}}}

" Mapeos {{{
"" Fijar la tecla lider como espacio
let g:mapleader="\<Space>"
"" Abrir archivo de configuración
nnoremap <leader>ev <cmd>vsplit $MYVIMRC<cr>
"" Cargar cambios realizados en el archivo de configuración
nnoremap <leader>sv <cmd>source $MYVIMRC<cr>
"" Para apagar el resaltado de busqueda
nnoremap <silent> <esc> <cmd>nohlsearch<cr>
"" Para navegar entre pantallas divididas
nnoremap <A-j> <C-w><C-j>
nnoremap <A-k> <C-w><C-k>
nnoremap <A-l> <C-w><C-l>
nnoremap <A-h> <C-w><C-h>
inoremap <A-h> <C-\><C-n><C-w>h
inoremap <A-j> <C-\><C-n><C-w>j
inoremap <A-k> <C-\><C-n><C-w>k
inoremap <A-l> <C-\><C-n><C-w>l
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
"" Para facilitar el autocompletado
inoremap <C-f> <C-x><C-f>
inoremap <C-l> <C-x><C-l>
"" Abrir explorador de archivos netrw
nnoremap <leader>n :Vexplore<CR>
"" Abrir emulador de terminal
nnoremap <leader>t :split term://bash<CR>
"}}}

" Configuración general {{{

filetype plugin on

" Tipo de folding para archivos vim
augroup filetype_vim
  autocmd!
  autocmd FileType vim setlocal foldmethod=marker
  autocmd FileType vim setlocal foldlevelstart=0
augroup END

"" Crear directorio para archivos de respaldo si es necesario
if !isdirectory($HOME . "/vimtmp")
  call mkdir($HOME . "/vimtmp/backup", "p")
  call mkdir($HOME . "/vimtmp/swp", "p")
endif

set path=.,** " El path es el directorio de trabajo actual y todos los subdirectorios
set backupdir=~/vimtmp/backup,~/ " Definir directorio para archivos backup
set directory=~/vimtmp/swp,~/ " Definir directorio para archivos swap

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
set relativenumber " Enumerar las demas lineas con respecto a la actual
set list " Marcar tabulaciones y espacio sobrante con simbolos
set cursorline " Sombrear la linea activa
set lazyredraw " Redibujar la pantalla solo cuando sea necesario
" }}}
