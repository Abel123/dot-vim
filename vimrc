"let g:pathogen_disabled="bundle/vim-smartinput"
"let g:pathogen_disabled = []
"call add(g:pathogen_disabled, 'vim-smartinput')
"


"execute pathogen#infect()
if has("win32")
    let $VIMHOME=$VIM."/vimfiles"
elseif has("unix")
    let $VIMHOME="~/.vim"
endif

source ~/bundles.vim
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim

set encoding=utf-8
set fileencodings=utf-8,chinese,latin-1
"if has("win32")
"set fileencoding=chinese
"else
"set fileencoding=utf-8
"endif
"
set fileencoding=utf-8

language messages zh_CN.utf-8

""""""""""""""""""""""""""""""
" 一般设置
""""""""""""""""""""""""""""""

"关闭VI兼容模式
set nocompatible
"允许鼠标
set mouse=a
"打开filetype 插件
filetype on
filetype plugin on
filetype indent on


"自动保存
set autowrite
"如果文件在外部被改动自动重新读入
set autoread

source ~/.vim/bundle/racer/plugin/racer.vim
"打开文件时，总是跳到退出之前的光标处
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif


"Restore cursor to file position in previous editing session
set viminfo='10,"100,:20,%,n$VIM/.viminfo

"""""""""""""""""""""""""""""""""""""""""""""
"   键盘映射
"""""""""""""""""""""""""""""""""""""""""""""
"Set mapleader
let mapleader = ","
let g:mapleader = ","
let g:C_MapLeader="`"

"""
" 特殊功能键F1-12
"""
""F1 windows 下不要使用
"map <F1>
""F2 
map <F2> :NERDTreeToggle<CR>
""fn maping
"map <F3> :TlistToggle<CR>
map <F4> :TagbarToggle<CR>


map <C-F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

"窗口间移动

"""C-hjkl已经在minibuffer中定义
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-h> <C-w>h
map <C-l> <C-w>l


"缓冲区切换
""在minibuffer中定义
map <C-Tab> :bn<cr>
map <C-S-Tab> :bp<cr>
""自定义的，不用minibuffer时可以用这组映射
map <C-right> :bn<cr>
map <C-left> :bp<cr>

" windows 中<C-Space>被系统占用， 用于vimwiki中check Todo
"map  <C-Space>
"map <C-x> <C-Space>

"复制粘贴
map <leader><C-v> "*p
map <C-c> "*y

" set Ctrl+j in insert mode, like VS.Net
imap <C-j> <C-X><C-O>


"Move a line of text using control

"Fix the problem of ALT key not work in xterm 7bit mode.


"set <M-j>=j
"set <M-k>=k

nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z


"快速保存
nmap <leader>x :x!<cr>
nmap <leader>w :w!<cr>

""Tab 操作
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

"快速关闭当前缓冲区
map <leader>bc :Bclose<CR>
map <leader>bd :bd<CR>
map <leader>c :close<CR>

nmap <leader>fd :se ff=dos<cr>
nmap <leader>fu :se ff=unix<cr>
nmap <leader>rm :%s/^\r+$//e

nmap <leader>tt <Plug>VimwikiToggleListItem

nmap <leader>pm :set ft=xml<CR> :1,$!xmllint --format -<CR>


"""""""""""""""""""""""""""""""""""""""""""""
"  外观设置和界面设置
"""""""""""""""""""""""""""""""""""""""""""""
if has("gui_running")
  set guioptions-=T
  set guioptions-=m
  set guioptions-=r
  set guioptions-=L
  set showtabline=1
endif

"if has("win32")
"    set guifont=Courier_New:h11:cANSI
set guifont=Consolas:h12:cDEFAULT

"set guifont=NSimsun:h11
"set guifont="YaHei Consolas Hybrid":h11
set guifontwide=Microsoft\ YaHei\ Mono:h12
"    set guifontwide=Consolas:h11
"endif


"打开语法高亮
syntax enable
syntax on
set synmaxcol=300

"设置主题
"set background=dark
"colorscheme elflord
"colorscheme Chocolateliquor
"colorscheme ldark
"colorscheme summerfruit256
"colorscheme desert
colorscheme molokai
set t_Co=256


"高亮显示当前行
set nocursorline
"hi cursorline guibg=#333333
"hi CursorColumn guibg=#333333

"快捷菜单样式设置
"hi Pmenu guibg=#333333
"hi PmenuSel guibg=#555555 guifg=#ffffff

"设置当光标向下滚动时，光标下面至少有行数
set so=10

"使用WiLd menu
set wildmenu

"显示当前位置
set ruler

"命令行高度设为2
set cmdheight=1

"显示行数
set number

"设置 backspace
"set backspace=eol,start,indent
set backspace=indent,eol,start

"Bbackspace and cursor keys wrap
set whichwrap+=<,>,h,l

"搜索的时候忽略大小写
set ignorecase

"即时搜索
set incsearch

"高亮所有匹配项
set hlsearch


"显示括号匹配
set showmatch

"括号匹配提示时间
set mat=2

"自动将当前路径设置到当前文件所在路径
"set autochdir

"自动补全
set completeopt=longest,menu

set ffs=unix,dos,mac

"不进行备份
set nobackup
set nowb
set noswapfile

""""""""""""""""""
" 文本选项
""""""""""""""""""
"Tab 格式设置
"set expandtab
set shiftwidth=4

set smarttab

"C-style 缩进
set cindent

"折行
set wrap


"""""""""""""""""""""""""""""""
" 状态显示条
"""""""""""""""""""""""""""""""
"python from powerline.ext.vim import source_plugin; source_plugin()

""""""""""""""""""""""""""""""
" => Statusline
""""""""""""""""""""""""""""""
"Format the statusline
" Nice statusbar
let performance_mode = 0

if performance_mode
else
    set laststatus=2
    set statusline=
    set statusline+=%2*%-3.3n%0*\ " buffer number
    set statusline+=%f\ " file name
    set statusline+=%h%1*%m%r%w%0* " flags
    set statusline+=[
    if v:version >= 600
        set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
        set statusline+=%{&encoding}, " encoding
    endif
    set statusline+=%{&fileformat}] " file format
    if filereadable(expand("$VIMHOME/plugin/vimbuddy.vim"))
        set statusline+=\ %{VimBuddy()} " vim buddy
    endif
    set statusline+=%= " right align
    set statusline+=%2*0x%-8B\ " current char
    set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

    " special statusbar for special windows
    if has("autocmd")
        au FileType qf
                    \ if &buftype == "quickfix" |
                    \ setlocal statusline=%2*%-3.3n%0* |
                    \ setlocal statusline+=\ \[Compiler\ Messages\] |
                    \ setlocal statusline+=%=%2*\ %<%P |
                    \ endif

        fun! FixMiniBufExplorerTitle()
            if "-MiniBufExplorer-" == bufname("%")
                setlocal statusline=%2*%-3.3n%0*
                setlocal statusline+=\[Buffers\]
                setlocal statusline+=%=%2*\ %<%P
            endif
        endfun

        if v:version>=600
            au BufWinEnter *
                        \ let oldwinnr=winnr() |
                        \ windo call FixMiniBufExplorerTitle() |
                        \ exec oldwinnr . " wincmd w"
        endif
    endif

    " Nice window title
    if has('title') && (has('gui_running') || &title)
        set titlestring=
        set titlestring+=%f\ " file name
        set titlestring+=%h%m%r%w " flags
        set titlestring+=\ -\ %{v:progname} " program name
    endif
endif
let g:buftabs_in_statusline=1
set laststatus=2
"set statusline=\ %F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \Line:\ %l/%L:%c
"set statusline=asdfasdf%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
"set statusline=%<%F%h%m%r%h%w%y\ [FF=%{&ff}]\ [CWD:\ %r%{getcwd()}%h]\ %{strftime(\"%d/%m/%Y-%H:%M\")}%=\ ASCII:%b\ Hex:%B\ pos:%o\ Line:%l/%L\ Col:%c%V\ %P
"set statusline=%m%y\ [%t]\ [FF=%{&ff}]\ %<%{strftime(\"%d/%m/%Y-%H:%M\")}%=\ ASCII:%b\ Hex:%B\ pos:%o\ Line:%l/%L\ Col:%c%V\ %P
"set statusline=%m%y[%t][%{&ff}]%=\ T:%L\ Col:%c%V\ %P
"set statusline=%<%F%h%m%r%h%w%y\ %{&ff}\ %{strftime(\"%d/%m/%Y-%H:%M\")}%=\ col:%c%V\ ascii:%b\ pos:%o\ lin:%l\,%L\ %P
"set statusline=%=buffers:\ %{buftabs#statusline()}\ 



"""""""""""""""""""""""""""""""
" 移动
"""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"SwitchToBuf()实现它在所有标签页的窗口中查找指定的文件名，如果找到这样一个窗口，
"就跳到此窗口中；否则，它新建一个标签页来打开vimrc文件
"上面自动编辑.vimrc文件用到的函数

    function! SwitchToBuf(filename)
        let bufwinnr = bufwinnr(a:filename)
        if bufwinnr != -1
        exec bufwinnr . "wincmd w"
            return
        else
            " find in each tab
            tabfirst
            let tab = 1
            while tab <= tabpagenr("$")
                let bufwinnr = bufwinnr(a:filename)
                if bufwinnr != -1
                    exec "normal " . tab . "gt"
                    exec bufwinnr . "wincmd w"
                    return
                endif
                tabnext
                let tab = tab + 1
            endwhile
            " not exist, new tab
            exec "tabnew " . a:filename
        endif
    endfunction

try
    set switchbuf=usetab
    set stal=0
catch
endtry


" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()

function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
     buffer #
   else
     bnext
   endif

   if bufnr("%") == l:currentBufNum
     new
   endif

   if buflisted(l:currentBufNum)
     execute("bdelete! ".l:currentBufNum)
   endif
endfunction

""""""""""""""""""""""""
" 插件相关
""""""""""""""""""""""""

"""""""""
" NERDTree
"""""""""
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "left"



"let Tlist_WinWidth = 30
"let Tlist_Use_Right_Window=1
"let Tlist_Use_SingleClick=0
"let Tlist_Show_One_File=1
"let Tlist_Sort_Type = "name"
"let Tlist_Show_Menu = 0
"let Tlist_Auto_Update = 1
"let Tlist_Exit_OnlyWindow =1
"let Tlist_Inc_Winwidth = 1
"let Tlist_Enable_Fold_Column = 0
"let Tlist_Display_Prototype = 0

" --------------------
" TagList
" --------------------
" TagListTagName - Used for tag names
"highlight MyTagListTagName gui=bold guifg=Black guibg=Orange
"" TagListTagScope - Used for tag scope
"highlight MyTagListTagScope gui=NONE guifg=Blue
"" TagListTitle - Used for tag titles
"highlight MyTagListTitle gui=bold guifg=DarkRed guibg=LightGray
"" TagListComment - Used for comments
"highlight MyTagListComment guifg=DarkGreen
"" TagListFileName - Used for filenames
"highlight MyTagListFileName gui=bold guifg=Black guibg=LightBlue
""let Tlist_Ctags_Cmd = $VIM.'/vimfiles/ctags.exe' " location of ctags tool
""let Tlist_Sort_Type = "order" " sort by order or name
"let Tlist_Display_Prototype = 0 " do not show prototypes and not tags in the taglist window.
"let Tlist_Compart_Format = 1 " Remove extra information and blank lines from the taglist window.
"let Tlist_GainFocus_On_ToggleOpen = 1 " Jump to taglist window on open.
"let Tlist_Display_Tag_Scope = 1 " Show tag scope next to the tag name.
"let Tlist_Close_On_Select = 1 " Close the taglist window when a file or tag is selected.
"let Tlist_Enable_Fold_Column = 0 " Don't Show the fold indicator column in the taglist window.
" let Tlist_Ctags_Cmd = 'ctags --c++-kinds=+p --fields=+iaS --extra=+q --languages=c++'
" very slow, so I disable this
" let Tlist_Process_File_Always = 1 " To use the :TlistShowTag and the :TlistShowPrototype commands without the taglist window and the taglist menu, you should set this variable to 1.
":TlistShowPrototype [filename] [linenumber]
" vim menu
"source $VIMRUNTIME/menu.vim


"vimwiki
"{{{
    let s:wiki_path = $VIMHOME.'/../mywiki'
    let wiki_1 = {}
    let wiki_1.path = s:wiki_path."/wiki_files"
    let wiki_1.path_html = s:wiki_path."/wiki_html"
    let wiki_1.auto_export = 0
    let wiki_1.html_header = wiki_1.path_html."/header.tpl"
    let wiki_1.html_footer = wiki_1.path_html."/footer.tpl"
    let wiki_1.nested_syntaxes = {'python':'python', 'c++':'cpp', 'java':'java', 'xml':'xml'}
    
    let g:vimwiki_list=[wiki_1]
    
    "let g:vimwiki_list=[{'path':'d:/workspace/web/mywiki/wiki_files','path_html':'d:/workspace/web/mywiki/wiki_html', 'auto_export':1, 'html_header':'d:/workspace/web/mywiki/wiki_html/header.tpl', 'html_footer':'d:/workspace/web/mywiki/wiki_html/footer.tpl'}]
    let tlist_vimwiki_settings = 'wiki;h:Headers'
    let g:vimwiki_html_header_numbering = 2
    let g:vimwiki_hl_cb_checked = 1
    let g:vimwiki_html_header_numbering_sym = ''
    let g:vimwiki_folding = 0
    let g:vimwiki_fold_lists = 1
    let g:snippetsEmu_key = "<S-Tab>"
 

".vimrc 快速重载
if  has("win32")
    map <leader>s :source $VIMHOME/../_vimrc<cr>
    "map <leader>e :e! $VIMRUNTIME/../_vimrc<cr>
    map <leader>e :call SwitchToBuf("$VIMHOME/../_vimrc")<CR>
    autocmd! bufwritepost _vimrc source $VIMHOME/../_vimrc
"    autocmd! bufwritepost _vimrc python from powerline.ext.vim import source_plugin; source_plugin()

else
    map <leader>s :source ~/.vimrc<cr>
    "map <leader>e :e! ~/.vimrc<cr>
    map <silent> <leader>e :call SwitchToBuf("~/.vimrc")<cr>
    autocmd! bufwritepost .vimrc source ~/.vimrc
"    autocmd! bufwritepost .vimrc python from powerline.ext.vim import source_plugin; source_plugin()

endif

"neocompl
" Disable AutoComplPop. 
"let g:acp_enableAtStartup = 0 
" Use neocomplcache. 
"let g:neocomplcache_enable_at_startup = 1 
" Use smartcase. 
"let g:neocomplcache_enable_smart_case = 1 
"" Use camel case completion. 
""let g:neocomplcache_enable_camel_case_completion = 1 
"" Use underbar completion. 
"let g:neocomplcache_enable_underbar_completion = 1 
"" Set minimum syntax keyword length. 
"let g:neocomplcache_min_syntax_length = 3
"let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*' 
"
"set completeopt-=preview
"
"
"" Define dictionary. 
"let g:neocomplcache_dictionary_filetype_lists = { 
"    \ 'default' : '', 
"    \ 'vimshell' : $HOME.'/.vimshell_hist', 
"    \ 'scheme' : $HOME.'/.gosh_completions' 
"    \ } 
"
"" Define keyword. 
"if !exists('g:neocomplcache_keyword_patterns') 
"    let g:neocomplcache_keyword_patterns = {} 
"endif 
"let g:neocomplcache_keyword_patterns['default'] = '\h\w*' 
"
"" Plugin key-mappings. 
"imap <C-k>     <Plug>(neocomplcache_snippets_expand) 
"smap <C-k>     <Plug>(neocomplcache_snippets_expand) 
"inoremap <expr><C-g>     neocomplcache#undo_completion() 
"inoremap <expr><C-l>     neocomplcache#complete_common_string() 
"
"" SuperTab like snippets behavior. 
""imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>" 
"
"
"" Recommended key-mappings. 
"" <CR>: close popup and save indent. 
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>" 
"" <TAB>: completion. 
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>" 
"" <C-h>, <BS>: close popup and delete backword char. 
""inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>" 
"inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>" 
"inoremap <expr><C-y>  neocomplcache#close_popup() 
"inoremap <expr><C-e>  neocomplcache#cancel_popup() 
"
" AutoComplPop like behavior. 
"let g:neocomplcache_enable_auto_select = 1 

" Shell like behavior(not recommended). 
"set completeopt+=longest 
"let g:neocomplcache_enable_auto_select = 1 
"let g:neocomplcache_disable_auto_complete = 1 
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>" 
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>" 

" Enable omni completion. 
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS 
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags 
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS 
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete 
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags 
"
" Enable heavy omni completion. 
"if !exists('g:neocomplcache_omni_patterns') 
"let g:neocomplcache_omni_patterns = {} 
"endif 
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::' 
""autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete 
"let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
"

" SuperTab
"let g:SuperTabDefultCompletionType='context'
"let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
"let g:SuperTabRetainCompletionType=2


" TagBar
"
"let g:tagbar_left = 0
"let g:tagbar_width = 30
"
"let g:tagbar_autoclose = 1
"let g:tagbar_expand = 0

"let g:ycm_global_ycm_extra_conf=$VIMHOME.'/../.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0

"let g:indent_guides_guide_size=1

"let g:syntastic_ignore_files=['^/usr']
"
let g:notes_directories = [$VIMHOME.'/../vim-notes']
vmap <Leader>ns :NoteFromSelectedText<CR>

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

let g:session_directory = $VIMHOME.'/../sessions'
set hidden
let $RUST_SRC_PATH = $HOME.'/source/rustc-1.4.0/src/'

if has('cscope')
    set cscopetag cscopeverbose

    if has('quickfix')
	set cscopequickfix=s-,c-,d-,i-,t-,e-
    endif
    cnoreabbrev <expr> csa
		\ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs add'  : 'csa')
    cnoreabbrev <expr> csf
		\ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs find' : 'csf')
    cnoreabbrev <expr> csk
		\ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs kill' : 'csk')
    cnoreabbrev <expr> csr
		\ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs reset' : 'csr')
    cnoreabbrev <expr> css
		\ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs show' : 'css')
    cnoreabbrev <expr> csh
		\ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs help' : 'csh')
    cnoreabbrev <expr> cfg
		\ ((getcmdtype() == ':' && getcmdpos() <= 4)? 'cs find g' : 'cfg')

endif
autocmd FileType rs setlocal omnifunc=RacerComplete
autocmd FileType rs nnoremap gd :call RacerGoToDefinition()<cr>
