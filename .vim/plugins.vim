set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
let g:clang_c_options = '-std=gnu11'
Plugin 'VundleVim/Vundle.vim'

" (*) Aqui agregamos las líneas <Plugin> para incorporar nuevos plugins a Vim
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plugin 'junegunn/fzf.vim'
  Plugin 'pangloss/vim-javascript'    " JavaScript support
  Plugin 'leafgarland/typescript-vim' " TypeScript syntax
  Plugin 'neoclide/coc.nvim' , { 'branch' : 'release' }

call vundle#end() " required
filetype plugin indent on " required