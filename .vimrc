"PLUGIN MANAGER VUNDLE

 set nocompatible              " be iMproved, required
 filetype off                  " required

 " set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()

 "Plugins list ______________________________________
  Plugin 'https://github.com/scrooloose/nerdtree.git' " file explorer
  Plugin 'https://github.com/ronny/birds-of-paradise.vim.git' " color scheme
  Plugin 'tpope/vim-commentary' 
  Plugin 'easymotion/vim-easymotion'

 " __________________________________________________

 " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  call vundle#end()            " required
  filetype plugin indent on    " required

"------------------------------------------------------------------------------------------
" Basic Setup
    set t_Co=256
    set number
    "set cursorline
    set noexpandtab tabstop=4 shiftwidth=4
    colorscheme birds-of-paradise
    syntax on
    filetype plugin indent on

"------------------------------------------------------------------------------------------

"NERDTREE
 vmap <c-e> <esc>:NERDTreeToggle<CR>
 nmap <c-e> <esc>:NERDTreeToggle<CR>
 imap <c-e> <esc>:NERDTreeToggle<CR>

"EasyMotion
 map <Leader> <Plug>(easymotion-prefix)
