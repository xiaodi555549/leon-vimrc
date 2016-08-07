set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" most important plugin
"""""""""""""""""""""""""""""""""""""
Plugin 'jlanzarotta/bufexplorer'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-scripts/mru.vim'
Plugin 'mileszs/ack.vim' 
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mattn/emmet-vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'tpope/vim-fugitive'

" useful plugin
"""""""""""""""""""""""""""""""""""""
Plugin 'myusuf3/numbers.vim'
Plugin 'pangloss/vim-javascript'

" code snippets 
" Plugin 'SirVer/ultisnips'
" Plugin 'honza/vim-snippets'

" color schemes
Plugin 'flazz/vim-colorschemes'
" statusline 
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" recent do not use
"""""""""""""""""""""""""""""""""""""
"Plugin 'vim-scripts/bash-support.vim'

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
