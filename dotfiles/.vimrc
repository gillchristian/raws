" .vimrc
" "
" " Github: @gillchristian
" "

set nocompatible

" === Syntax ===
syntax enable              " enable syntax processing

" === Spaces/Tabs ===
set tabstop=2              " number of visual spaces per TAB
set softtabstop=2          " number of spaces in tab when editing
set expandtab              " tabs are spaces
set backspace=indent,eol,start " Make backspace behave in a sane manner.

" === UI Config ===
set number
set showcmd                " show command in bottom bar
set cursorline             " highlight current line
filetype plugin indent on  " load filetype-specific indent files
set wildmenu               " visual autocomplete for command menu
set lazyredraw             " redraw only when we need to (not between macros)
set showmatch              " highlight matching [{()}]

" === Search ===
set incsearch              " search as characters are entered
set hlsearch               " highlight matches
" turn off search highlight: ,<space>
nnoremap <leader><space> :nohlsearch<CR>
"
" === Folding ===
" set foldenable             " enable folding
" set foldlevelstart=10      " open most folds by default"
" set foldnestmax=10         " 10 nested fold max"
" set foldmethod=indent      " fold based on indent level"


" ===== CUSTOM BINDING =====

" === Movement ===

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text (INSERT session)
nnoremap gV `[v`]`]`