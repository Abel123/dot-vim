set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=$VIMHOME/bundle/vundle/
call vundle#rc($VIMHOME."/bundle/")

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

"------------------
" Code Completions
"------------------
"Bundle 'Shougo/neocomplete'
"Bundle 'garbas/vim-snipmate'
"Bundle 'ervandew/supertab'
"Bundle 'honza/snipmate-snippets'
"Bundle 'mattn/zencoding-vim'
" snipmate dependencies
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'

"-----------------
" Fast navigation
"-----------------
Bundle 'Lokaltog/vim-easymotion'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-shell'
Bundle 'mattn/calendar-vim'
Bundle 'aklt/plantuml-syntax'
Bundle 'fholgado/minibufexpl.vim'
"Bundle 'davidoc/taskpaper.vim'
"--------------
" Fast editing
"--------------
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
nmap <leader># :call NERDComment(0, "invert")<cr>
vmap <leader># :call NERDComment(0, "invert")<cr>
Bundle 'tpope/vim-speeddating'

Bundle 'sjl/gundo.vim'
"Bundle 'Raimondi/delimitMate'
Bundle 'kana/vim-smartinput'
"Bundle 'godlygeek/tabular'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'bling/vim-airline'
    let g:airline_left_sep = ''
    let g:airline_right_sep = ''


"--------------
" IDE features
"--------------
Bundle 'scrooloose/nerdtree'
Bundle 'majutsushi/tagbar'
"Bundle 'humiaozuzu/TabBar'
"Bundle 'mileszs/ack.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'tpope/vim-fugitive'
"Bundle 'Lokaltog/vim-powerline'
Bundle 'scrooloose/syntastic'
Bundle 'epmatsw/ag.vim'
Bundle 'octol/vim-cpp-enhanced-highlight'

"-------------
" Other Utils
" ------------
"Bundle 'humiaozuzu/fcitx-status'
"Bundle 'nvie/vim-togglemouse'
Bundle 'FencView.vim'
Bundle 'SirVer/ultisnips'
Bundle 'vimwiki/vimwiki'
"Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'Yggdroot/indentLine'
set list lcs=tab:\|\
let g:indentLine_color_term = 111
let g:indentLine_color_gui = '#DADADA'
let g:indentLine_char = '.'

Bundle 'VOoM'

Bundle 'Valloric/YouCompleteMe'

Bundle 'xolox/vim-notes'
"----------------------------------------
" Syntax/Indent for language enhancement
"----------------------------------------
" web backend
"Bundle '2072/PHP-Indenting-for-VIm'
"Bundle 'tpope/vim-rails'
"Bundle 'beyondwords/vim-jinja2'
"Bundle 'digitaltoad/vim-jade'

" web front end
"Bundle 'othree/html5.vim'
"Bundle 'tpope/vim-haml'
"Bundle 'nono/jquery.vim'
"Bundle 'pangloss/vim-javascript'
"Bundle 'kchmck/vim-coffee-script'
"Bundle 'groenewege/vim-less'
"Bundle 'wavded/vim-stylus'

" markup language
Bundle 'tpope/vim-markdown'

" Ruby
Bundle 'tpope/vim-endwise'

" Scheme
Bundle 'kien/rainbow_parentheses.vim'
"Bundle 'wlangstroth/vim-racket'

"Rust
Bundle 'wting/rust.vim'
Bundle 'racer-rust/vim-racer'

" Python
"Bundle 'kevinw/pyflakes-vim'
"
"--------------
" Color Scheme
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'altercation/vim-colors-solarized'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'
Bundle 'chriskempson/vim-tomorrow-theme'
Bundle 'tomasr/molokai'

filetype plugin indent on     " required!"
set omnifunc=syntaxcomplete#Complete
