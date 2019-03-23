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

function! XTermPasteBegin()
	  set pastetoggle=<Esc>[201~
	    set paste
	      return ""
      endfunction""]))]"]""]"

" by default, the indent is 2 spaces.
set shiftwidth=2
set softtabstop=2
set tabstop=2

" for yaml files, 2 spaces
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab

" for python file, 3 spaces
autocmd Filetype python setlocal ts=3 sw=3 sts=0 expandtab

"Setting the color setup
color dracula
set nu

"NerdTree Setup"
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
map <C-n> :NERDTreeToggle<CR>

let python_highlight_all=1
