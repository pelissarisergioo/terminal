#!/bin/bash

echo "[+] Removing some previous installation...."
rm -rf ~/.vim

echo "[+] Installing Bundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "[+] Generating the .vimrc file...."
cat >~/.vimrc <<EOL
set nocompatible              " be iMproved, required
filetype off                  " required
syntax on

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'dracula/vim'

call vundle#end()            " required
filetype plugin indent on    " required

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
nnoremap <buffer> <C-r> <Esc>:w<CR>:exec '!python3' shellescape(@%, 1)<cr>

"Setting the color setup
color dracula
set nu

"NerdTree Setup"
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>

let python_highlight_all=1
EOL

echo "[+] Running VIM just to install the Required plugins..."
vim -c ':PluginInstall'
