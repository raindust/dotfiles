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




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [SECTION2] custom key binding
"
let mapleader=','

" normal mode
" remove space at the end of line
map <leader><space> :StripWhitespace<cr>
map <F3> :NERDTreeToggle<CR>
map <F2> :TagbarToggle<CR>

" inset mode
imap jj <esc>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" [SECTION3] vim-plug
"
call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-sensible'
Plug 'junegunn/vim-easy-align'
" NERD Tree
Plug 'scrooloose/nerdtree'
let NERDTreeShowHidden=1
Plug 'ntpeters/vim-better-whitespace'
Plug 'rust-lang/rust.vim'
Plug 'majutsushi/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'w0rp/ale'
" easymotion
Plug 'easymotion/vim-easymotion'
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
"airline"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
nmap <leader>1 :bfirst<CR>
nmap <leader>2 :bfirst<CR>:bn<CR>
nmap <leader>3 :bfirst<CR>:2bn<CR>
nmap <leader>4 :bfirst<CR>:3bn<CR>
nmap <leader>5 :bfirst<CR>:4bn<CR>
nmap <leader>6 :bfirst<CR>:5bn<CR>
" deoplete.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
let g:deoplete#enable_at_startup = 1 " Use deoplete.

call plug#end()
