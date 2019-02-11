"
" [SECTION1] global settings
"
set number " show line number
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936 " support chinese
set ambiwidth=double
set wrap " auto change line
set showcmd " show the uncomplete command.
set ignorecase smartcase	"ignore upper or lower char
map <esc><esc><esc> :noh<cr>
set mouse=n " support mous
" text, tab and indent related.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set ai	"auto indent
set si	"smart indent
set nowritebackup " auto backup the open file
set autowrite " auto save
set fileformat=unix
set ruler " always show current position
set cmdheight=1 " the commandbar height
set magic " enable magic
set fo-=at "set autowrite
syntax on

"
" [SECTION2] custom key binding
"
let mapleader=','
" normal mode
" remove space at the end of line
map <leader><space> :FixWhitespace<cr>
map <F3> :NERDTreeToggle<CR>
map <F2> :TlistToggle<CR>
map <F4> :cwindow<CR>
" inset mode
imap jj <esc>

