
" # 常规配置 #

let mapleader=" "

" 文件操作
map S :w<CR>
map s <nop>
map Q :q<CR>
map R :source $MYVIMRC<CR>


"" vim 颜色
" exec "color delek"

"" vim pulg
source ~/.vim/vim-plug.vim

"""""""""""""""""""""""""""""""

"" vim 分屏
map sl :set splitright<CR>:vsp<CR>
map sh :set nosplitright<CR>:vsp<CR>
map sk :set nosplitbelow<CR>:sp<CR>
map sj :set splitbelow<CR>:sp<CR>

" 分屏光标移动
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

" 分屏大小
map <LEADER><up> :res -5<CR>
map <LEADER><down> :res +5<CR>
map <LEADER><left> :vertical resize+5<CR>
map <LEADER><right> :vertical resize-5<CR>


" 分屏方向
map sv <C-w>t<C-w>H
map sh <C-w>t<C-w>K

"""""""""""""""""""""""""""""""

"" vim Tab
map tu :tabe<CR>
map tl :+tabnext<CR>
map th :-tabnext<CR>

"""""""""""""""""""""""""""""""

"" 编辑器设置

" 行号
set number
set relativenumber
set cursorline


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

