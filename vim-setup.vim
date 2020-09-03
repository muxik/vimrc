  
let mapleader=" "

" 行号
set number
set relativenumber
set cursorline


" vim 颜色
" exec "color delek"

" 识别文件
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

" vim 搜索
exec ":nohlsearch"
set hlsearch
set incsearch
set ignorecase
noremap <LEADER><CR> :nohlsearch<CR>

"" 光标移动
noremap W 5j
noremap E 5k

" 缩进
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set tw=0
set indentexpr=

" 其他设置
set nocompatible
set mouse=a
set encoding=utf-8
let &t_ut=''
" set list
" set listchars=tab:▸\ ,trail:▫
set scrolloff=5
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set laststatus=2
set autochdir
syntax on
set showcmd
set wildmenu

" 每次光标回到上次编辑的位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

