" akeali: highlight searches and increment
:set hlsearch
:set incsearch


" akeali: add line numbers
:set number

" akeali: autoindent lines on new line creation
:set autoindent
" akeali: tabs are expanded into spaces (including autoindent)
":set expandtab


" akeali: replacing two top by commands found: http://stackoverflow.com/questions/234564/tab-key-4-spaces-and-auto-indent-after-curly-braces-in-vim

set smartindent
set shiftwidth=4
set softtabstop=4
set expandtab

" akeali: adding ruler for column #
set ruler


" akeali: fixing backspace
set backspace=indent,eol,start
fixdel


" akeali: adding Ctrl+d for delete word (TODO needs adjustment)
"imap <C-d> <C-[>diwi
"nmap <C-d> diw


"""""""""""""""""""""
" akeali: coloring
""""""""""""""""""""""

" akeali: add color
:syntax on

" akeali: inform vim that I'm using a dark background so it uses lighter, more readable colors
:set background=dark

" akeali: override the coloring scheme for preprocessor commands (blue not readable on dark background)
:highlight PreProc ctermfg=DarkGray



""""""""""""""""""""""""

:set wildmenu

