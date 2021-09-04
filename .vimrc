" Very minimal, for now.
" This file is sure to grow as I get better at Vim.

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Nord theme plugin
" https://www.nordtheme.com
Plug 'arcticicestudio/nord-vim'

" Initialize plugin system
call plug#end()

colorscheme nord
