set nocompatible              "Use modern Vim behavior instead of old vi behavior
filetype off                  "Temporarily turn off filetype detection

" Add Vundle to Vim’s runtime path so Vim knows where Vundle is installed
set rtp+=~/.vim/bundle/Vundle.vim

" Start the Vundle plugin section.
call vundle#begin()


" Install and manage Vundle itself as a plugin.
Plugin 'VundleVim/Vundle.vim'
Plugin 'cocopon/iceberg.vim' "colorscheme iceberg
Plugin 'tpope/vim-fugitive'  " allow git through vim instead of going back to terminal.



call vundle#end()            " finish plugin list and load Vundle
filetype plugin indent on   

colorscheme iceberg
