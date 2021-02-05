"plugins manager
so ~/.vim/plugins.vim

" OPCIONES GENERALES PARA PROGRAMAR

syntax on "coloreado
set ignorecase
set number
set wrap!
"set foldcolumn=4
"set foldmethod=marker
set foldmethod=indent
setlocal omnifunc=syntaxcomplete#Complete
set cursorline
set modeline! "Para que reconozca la configuracion de cada archivo

set tabstop=4
set shiftwidth=4
set expandtab     " Reemplazar tabs con espacios
set tb=tooltips   
set smarttab      
set sw=4          " sw -> espacios de la indentacion

"Configuración para el plugin taglist
nnoremap <silent> <F8> :TlistToggle<CR>

"setlocal spell spelllang=es "Corrector ortografico
"set noexpandtab
"set cindent "identa segun el lenguaje C
"la siquiente linea produce un efecto no deseado cuando se pega
"información usando Ctrl+Shift
"set smartindent "identa segun el lenguaje que se esta usando
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" GENERAL

"Pasar de un tab a otro
nnoremap <silent> <A-w> :tabnext<CR>
nnoremap <silent> <A-q> :tabprevious<CR>
nnoremap <silent> <C-N> :tabnew<CR>
"- LA LINEA QUE SIGUE IMPIDE QUE PUEDAS USAR EL textwidth PARA QUE CORTE EL
"- CODIGO AUTOMATICAMENTE, POR ESO LO DEJO COMENTADO, ADEMAS NO SE PARA QUE
"- SIRVE (https://www.ritlabs.com/bt/view.php?id=1128)
"set fo=croq

map ,# :s/^/#/<CR>
map ,/ :s/^/\/\//<CR>

map ,s :mksession! ~/.vim/.session<CR>
map ,r :source ~/.vim/.session<CR>

" COSOS DE VALA QUE PUEDEN SER UTILES

" Enable comment strings
let vala_comment_strings = 1

" Highlight space errors
let vala_space_errors = 1

" Disable space-tab-space errors
let vala_no_tab_space_error = 1

let g:airline#extensions#tabline#enabled = 1
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [BUFFER=%n]\ %{strftime('%c')}
" Status bar
set laststatus=2


" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
set textwidth=79
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Speed up scrolling in Vim
set ttyfast

" Turn off modelines
set modelines=0

" Automatically wrap text that extends beyond the screen length.
set wrap
" Vim's auto indentation feature does not work properly with text copied from outside of Vim. Press the <F2> key to toggle paste mode on/off.
nnoremap <F2> :set invpaste paste?<CR>
imap <F2> <C-O>:set invpaste paste?<CR>
set pastetoggle=<F2>

" Set compatibility to Vim only.
set nocompatible
set nolist
set rnu

" Display options
set showmode
set showcmd

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch
" Enable incremental search
set incsearch
" Include matching uppercase words with lowercase search term
set ignorecase
" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text, 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" Map the <Space> key to toggle a selected fold opened/closed.
nnoremap <silent> <Space> @=(foldlevel('.')?'za':"\<Space>")<CR>
vnoremap <Space> zf

let g:airline_powerline_fonts = 1
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
:imap ii <Esc>