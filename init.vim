" Local file $HOME/.config/nvim/init.vim
" https://github.com/JAlejandroMarin/neovim-config

set nocompatible
filetype off
syntax on " Habilitar sintaxis
set number " Habilitar numero de lineas
set showcmd
set mouse=a " Habilitar uso de mouse
set noerrorbells " Quitar sonidos de error
set sw=2 " Tabulacion de dos
set expandtab " Tabulacion espaciada
set smartindent " Indexado automatico en programacion
set numberwidth=1 " Reducir espaciado de line
set nowrap " Elimina el salto de linea automático
set noswapfile 
set nobackup
set nolist " Ocultar caracteres ocultos
set incsearch
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set cursorline
set termguicolors
set splitbelow
set splitright

" Autocompletado de llaves, parentesis, corchetes, etc.
inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap < <><Esc>i
inoremap { {}<Esc>i
inoremap [ []<Esc>i
inoremap ` ``<Esc>i

" Instalacion de plugins
call plug#begin('~/.local/share/nvim/plugged')
  Plug 'tomasiser/vim-code-dark' " Thema de vim
  Plug 'scrooloose/nerdtree' " Navegador de archivos
  Plug 'valloric/youcompleteme' " Autocompletado
  Plug 'vim-python/python-syntax'
  Plug 'christoomey/vim-tmux-navigator'
  Plug 'ryanoasis/vim-devicons'
call plug#end()

" Habilitar tema de plugin
colorscheme codedark

" Abrir NerdTree
map <C-n> :NERDTreeToggle<CR>

" Abrir terminal
map <C-t> :split<CR>:ter<CR>:resize 10<CR>
