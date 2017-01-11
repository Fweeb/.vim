" vim-plug section

call plug#begin('~/.vim/plugged')
Plug 'plasticboy/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'reedes/vim-pencil'
Plug 'vim-scripts/fountain.vim'
call plug#end()

syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set number
set colorcolumn=80
set hidden
set wrap lbr
colorscheme slate

if has("gui_running")
  set guifont=Terminess\ Powerline\ 12
  set columns=100
  set lines=38
endif

set t_Co=256
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme='ubaryd'
