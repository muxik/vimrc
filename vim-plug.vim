call plug#begin('~/.vim/plugged')

" 底部状态栏
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


" snazz配色 插件
Plug 'connorholyday/vim-snazzy'

" NERDTree 树形目录以及增强插件
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'

" ale 语法检查插件
Plug 'dense-analysis/ale'

" 缩进
Plug 'Yggdroot/indentLine'

" js语法高亮
Plug 'jelera/vim-javascript-syntax'

" html emmet
Plug 'mattn/emmet-vim'

" coc-vim 可以像vscode一样使用vim
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" fzf 文件查找
Plug 'junegunn/fzf.vim'

" surround.vim 成对 添加、替换、删除 引号、括号 以及XML 标签 <cs>
Plug 'tpope/vim-surround'

" 成对插入或删除方括号，括号，引号。
Plug 'jiangmiao/auto-pairs'

" vim开始页面
Plug 'mhinz/vim-startify'

call plug#end()



"----------------------------------"
" vim-airline
"----------------------------------"
"let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_theme='base16'
let g:airline_theme="onedark"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep = ''
let g:airline_left_alt_sep = '✈'
let g:airline_right_sep = '🍀'
let g:airline_right_alt_sep = ''


"----------------------------------"
" vim-snazzy
"----------------------------------"

colorscheme snazzy
"let g:SnazzyTransparent = 1

"----------------------------------"
" NERDTree
"----------------------------------"
noremap ff :NERDTreeToggle<CR>

" 修改箭头符号
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''

" vim 打开目录时自动开启NerdTree" 
 autocmd StdinReadPre * let s:std_in=1
 autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

" 打开vim时如果未指定文件，在vim启动时自动打开NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") && v:this_session == "" | NERDTree | endif

" 当只剩下NERDTree 时关闭Vim
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


"" NERDTree-git 对git状态支持
let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

"----------------------------------"
" ALE
"----------------------------------"

let g:ale_sign_column_always = 1
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_sign_column_always = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
"let g:ale_set_quickfix = 1
"let g:ale_open_list = 1"打开quitfix对话框
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
let g:ale_sign_error = ">>"
let g:ale_sign_warning = "--"
map <F7> ::ALEToggle<CR>

"----------------------------------"
" indentLine
"----------------------------------"

" none X terminal
let g:indentLine_color_tty_light = 7 " (default: 4)
let g:indentLine_color_dark = 1 " (default: 2)



"----------------------------------"
" Emmet-vim
"----------------------------------"
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key='<C-Z>'


"----------------------------------"
" coc.nvim
"----------------------------------"

set hidden
set updatetime=100

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" 回车不换行
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)


" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')


let g:coc_global_extensions = [
            \ 'coc-json',
            \ 'coc-vimlsp',
            \ 'coc-marketplace',
            \ 'coc-jedi',
            \ 'coc-html',
            \ 'coc-phpls',
            \ 'coc-sql',
            \ 'coc-css',
            \ 'coc-sh',
            \ 'coc-clangd'
            \ ]


"----------------------------------"
"" FZF.vim
"----------------------------------"

nmap <C-p> :Files<CR>
nmap <C-e> :Buffers<CR>
let g:fzf_action = { 'ctrl-e': 'edit' }



"----------------------------------"
" Ag
"----------------------------------"

command! -bang -nargs=* Ag
  \ call fzf#vim#ag(<q-args>,
  \                 <bang>0 ? fzf#vim#with_preview('up:60%')
  \                         : fzf#vim#with_preview('right:50%:hidden', '?'),
  \                 <bang>0)
nnoremap <silent> <Leader>f :Ag<CR>

"----------------------------------"
"auto-pairs
"----------------------------------"
let g:AutoPairs = {'(':')', '[':']', '{':'}',"'":"'",'"':'"'}


"----------------------------------"
" vim-startify
"----------------------------------"

" returns all modified files of the current git repo
" `2>/dev/null` makes the command fail quietly, so that when we are not
" in a git repo, the list will be empty
function! s:gitModified()
    let files = systemlist('git ls-files -m 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

" same as above, but show untracked files, honouring .gitignore
function! s:gitUntracked()
    let files = systemlist('git ls-files -o --exclude-standard 2>/dev/null')
    return map(files, "{'line': v:val, 'path': v:val}")
endfunction

let g:startify_lists = [
        \ { 'type': 'files',     'header': ['   MRU']            },
        \ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
        \ { 'type': 'sessions',  'header': ['   Sessions']       },
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
        \ { 'type': function('s:gitModified'),  'header': ['   git modified']},
        \ { 'type': function('s:gitUntracked'), 'header': ['   git untracked']},
        \ { 'type': 'commands',  'header': ['   Commands']       },
        \ ]

" Read ~/.NERDTreeBookmarks file and takes its second column
"function! s:nerdtreeBookmarks()
"    let bookmarks = systemlist("cut -d' ' -f 2 ~/.NERDTreeBookmarks")
"    let bookmarks = bookmarks[0:-2] " Slices an empty last line
"    return map(bookmarks, "{'line': v:val, 'path': v:val}")
"endfunction
"
"let g:startify_lists = [
"        \ { 'type': function('s:nerdtreeBookmarks'), 'header': ['   NERDTree Bookmarks']}
"        \]
