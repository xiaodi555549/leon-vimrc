set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
"Plugin 'minibufexpl.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
"Plugin 'vim-scripts/bash-support.vim'
"Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'easymotion/vim-easymotion'
Plugin 'myusuf3/numbers.vim'
Plugin 'mileszs/ack.vim' 
Plugin 'pangloss/vim-javascript'

call vundle#end()
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""
" set runpath
set runtimepath+=~/.vim_runtime

source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/filetypes.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/extended.vim

try
source ~/.vim/my_configs.vim
catch
endtry
