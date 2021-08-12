""   must have for plugins
set nocompatible
filetype plugin on

""" usefull stuff
"maeader key"
let mapleader=" "

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch

set wildmenu
set wildmode=list,full
set number relativenumber
set termguicolors

set splitbelow splitright

syntax on
set path+=**
" plugins
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'vimwiki/vimwiki'

" Initialize plugin system
call plug#end()


"""""""" goyo + limelight 

let g:goyo_width = 70
let g:limelight_default_coefficient = 0.7
" color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
" let g:limelight_paragraoh_span = 1

map <leader>gy :Goyo<CR>
map <leader>ll :Limelight!!<CR>
autocmd! User GoyoEnter Limelight
autocmd! User goyoLeave Limelight!
""""""""""""""""""""""""""""""""""""""""""
""""""""  vimwiki
let g:vimwiki_global_ext = 0
let g:vimwiki_ext2syntax = {'.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}

" Enable spell checking, s for spell check
map <leader>s :setlocal spell! spelllang=en_us<CR>

" statusbar
set laststatus=2
set statusline=%n
set statusline+=%#Folded#
set statusline+=\ %F
set statusline+=%#DiffText#
set statusline+=%h%m%r%w                     " status flags
set statusline+=%#SignColumn#
set statusline+=\ %y                   "Filetype
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}  "File encoding
set statusline+=\[%{&fileformat}\]     "Fileformat
set statusline+=%=                     " right align
set statusline+=\ %p%%                 "Percentage through the file
set statusline+=\ %l:%c                "line number : column
set statusline+=\ %L                   " Toital line
