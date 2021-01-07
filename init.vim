""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
set guicursor=n-v-c-sm:block,i-ci-ve:ver25-Cursor,r-cr-o:hor20
"set colorcolumn=80

set rtp+=~/sourceCode/tabnine/tabnine-vim


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [SECTION2] custom key binding
"
let mapleader=','

" normal mode
" remove space at the end of line
map <leader><space> :StripWhitespace<cr>
map <F3> :NERDTreeToggle<CR>
map <F2> :TagbarToggle<CR>
map gh c-]
map gl c-t

" inset mode
imap jj <esc>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [SECTION3] vim-plug
"
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdtree'
Plug 'ntpeters/vim-better-whitespace'
Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }

" candidates
"Plug 'w0rp/ale'
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf.vim'
"
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [SECTION4] plugin setup
"
" easymotion
let g:EasyMotion_use_smartsign_us = 1 " Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_startofline = 0 " keep cursor column when JK motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)
map # <Plug>(easymotion-sn)<c-r>=expand("<cword>")<cr><cr>
omap # <Plug>(easymotion-tn)<c-r>=expand("<cword>")<cr><cr>

" NERD Tree
let NERDTreeShowHidden=1
