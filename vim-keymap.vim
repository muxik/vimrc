
" 文件操作
map S :w<CR>
map s <nop>
map Q :q<CR>
map R :source $MYVIMRC<CR>


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

