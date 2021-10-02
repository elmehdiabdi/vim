call plug#begin('~/.vim/plugged')

autocmd BufNewFile,BufRead *.blade.php set filetype=html

Plug 'cakebaker/scss-syntax.vim'
Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'


"Colorschemes
Plug 'relastle/bluewery.vim'
Plug 'jnurmine/Zenburn'
Plug 'morhetz/gruvbox'
Plug 'arcticicestudio/nord-vim'
Plug 'altercation/vim-colors-solarized'
Plug 'ayu-theme/ayu-vim'
Plug 'tlhr/anderson.vim'
Plug 'sainnhe/sonokai'


"Movment
Plug 'easymotion/vim-easymotion'

"Helpers
Plug 'tpope/vim-commentary' 
Plug 'alvan/vim-closetag'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'weirongxu/plantuml-previewer.vim'
Plug 'tyru/open-browser.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'yaegassy/coc-blade-formatter', {'do': 'yarn install --frozen-lockfile'}
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

call plug#end()

set laststatus=2

filetype plugin on
set encoding=utf-8
set fileencoding=utf-8
set fileformat=unix
set fileformats=unix,dos
set number
set autoread
set colorcolumn=100
set mouse=n
set nowrap
set tabstop=4
set softtabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set expandtab
autocmd BufNewFile,BufRead *.vue: set filetype=vue

map <space> <Plug>(easymotion-s)
map <C-e> :NERDTreeToggle<CR>

let g:closetag_filenames = "*.html,*.xhtml,*.phtml,*.php,,*.ts,*.js,*.jsx,*.vue"
set omnifunc=syntaxcomplete#Complete

highlight link cssPositioningProp GruvboxAqua
highlight link cssBorderProp GruvboxAqua

if exists('+termguicolors')
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
endif

let g:gruvbox_contrast_dark= 'soft'
let g:gruvbox_invert_selection='0'
colorscheme gruvbox
set background=dark

command! -nargs=0 Prettier :call CocAction('runCommand', 'prettier.formatFile')
