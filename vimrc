" when open a file, cursor at the last time where you exit. 2011-11-04
"autocmd BufReadPost *
"			\ if line("'\"") > 0 && line("'\"") <= line("$") |
"			\ exe "normal! g`\""|
"			\ endif


" disable or enable underline at cursor line 2011-11-04
"set cursorline

" ab the mail
:ab mailbox heroopan@gmail.com
" set the status line
"set statusline=\ %<[%1*%*%n%R%H]\ %f\ %m\ \ \ 0x%B%=\ %y\ %0(%{&fileformat}\ %{&encoding}\ <%c:%l/%L>\ %p%%%)\ 
"set statusline=\ %<[%1*%*%n%R%H]\ %f%m\ %0(%{&fileformat}\ <%l/%L>%)\ 
"set statusline=\ %<%F[%1*%M%*%n%R%H]%=\ \ %y\ \ %0(%{&fileformat}\ \ %{&encoding}\ %c:%l/%L%)\ \ 



"
" Vundle plugin
"
set nocompatible              " be iMproved, required
filetype off                  " required

"set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'wincent/command-t'
Plugin 'https://github.com/Valloric/YouCompleteMe.git'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/TaskList.vim'
Plugin 'vim-scripts/taglist.vim'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/nerdtree'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


let mapleader=','

"
" YouCompleteMe
"
"let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
nnoremap <leader>jd :YcmCompleter GoTo<CR>
let g:ycm_confirm_extra_conf=0
let g:ycm_collect_identifiers_from_tag_files=1
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

"
" syntastic
"
let g:syntastic_error_symbol = '✗'	"set error or warning signs
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting=0
let g:syntastic_python_checkers=['pyflakes']
let g:syntastic_cpp_include_dirs = ['/usr/include/']
"let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
let g:syntastic_enable_balloons = 1	"whether to show balloons

"
" TaskList.vim
"
map <leader>td <Plug>TaskList

"
" vim-trailing-whitespace
"
" remove space at the end of line
map <leader><space> :FixWhitespace<cr>


"
" easymotion
"
""<Leader>f{char} to move to {char}
map  <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s{char}{char} to move to {char}{char}
" nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

" Move to word
map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

" Gif config
"nmap s <Plug>(easymotion-s2)
"nmap t <Plug>(easymotion-t2)

" Gif config
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)

map # <Plug>(easymotion-sn)<c-r>=expand("<cword>")<cr><cr>
omap # <Plug>(easymotion-tn)<c-r>=expand("<cword>")<cr><cr>

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" Gif config
map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

" Smartsign (type `3` and match `3`&`#`)
let g:EasyMotion_use_smartsign_us = 1

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion





" don't create .*.swp file 2011-11-04
"setlocal noswapfile

" auto (缩进)
set autoindent

" show line number
set number

" support chinese 2011-11-04
set encoding=utf-8
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set ambiwidth=double
set guifont=Courier\ 10\ Pitch\ 12

" gap between line
"set linespace=2

"set runtimepath+=~/vimfiles

" don't auto change line
"set nowrap
" auto change line
set wrap

" show the uncomplete command. 2011-11-04
set showcmd

" set the cursor line color. 2011-11-04
"if has("gui_running")
"	set cursorline
"	hi cursorline guibg=#033333
"endif

" search option. 2011-11-04
set ignorecase smartcase	"ignore upper or lower char
set incsearch				"high light char when search
set hlsearch				"set high light after search
"clear high light word. 2011-11-04
map <esc><esc><esc> :noh<cr>
" support mous
set mouse=n

" not compatible with vi. 2011-11-04
set nocompatible

set modelines=5

" set num=4 line to curors - when move vertical...
"set so=8

" text, tab and indent related.
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab

set ai	"auto indent
set si	"smart indent

" set how many lines of history vim has to remember
set history=1000
" colorscheme ps_color

" auto backup the open file
set nowritebackup
" auto save
set autowrite

"set backspace=indent,eol,start
"set foldmethod=indent
"set foldlevel=9999
"set list
"set listchars=tab:>-,trail:.,extends:>
"set suffixes+=.pyc,.pyo

" show the match char(eg: {},()...)
set showmatch

" support c/c++ indent
"set cin
"set cino=:0,g0,u0,(0,W4

set fileformat=unix
" always show current position
set ruler
"set visualbell
"set iskeyword-=.

" the commandbar height
set cmdheight=1

" always show the status line
"set laststatus=2

" enable magic
set magic

"set t_Co=256
"colorscheme guardian
"colorscheme molokai
"colorscheme wombat256mod

" cscope setting
if has ("cscope")
	set csprg=/usr/bin/cscope
	set csto=1
	set cst
	set nocsverb
	if filereadable ("cscope.out")
		cs add cscope.out
	endif
	set csverb
endif

" auto save
"set autowrite
set fo-=at
" 折叠
"set fdm=syntax
syntax on
imap jj <esc>
map <space> :bn<CR>
map <tab> :bp<CR>
"map <c-j> :tj <c-r>=expand("<cword>")<cr><cr>
"nmap <c-j> :tj <c-r>=expand("<cword>")<cr><cr>
"nmap <c-j>v :vsp \| tj <c-r>=expand("<cword>")<cr><cr>
"nmap <c-j>h :sp \| tj <c-r>=expand("<cword>")<cr><cr>
"
"nmap <c-[>c :cs find c <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>d :cs find d <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>e :cs find e <c-r>=expand("<cword>")<cr>
"nmap <c-[>f :cs find f <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>g :cs find g <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>i :cs find i <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>s :cs find s <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>t :cs find t <c-r>=expand("<cword>")<cr><cr>
"
"nmap <c-[>hc :sp \| cs find c <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>hd :sp \| cs find d <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>he :sp \| cs find e <c-r>=expand("<cword>")<cr>
"nmap <c-[>hf :sp \| cs find f <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>hg :sp \| cs find g <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>hi :sp \| cs find i <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>hs :sp \| cs find s <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>ht :sp \| cs find t <c-r>=expand("<cword>")<cr><cr>
"
"nmap <c-[>vc :vsp \| cs find c <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>vd :vsp \| cs find d <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>ve :vsp \| cs find e <c-r>=expand("<cword>")<cr>
"nmap <c-[>vf :vsp \| cs find f <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>vg :vsp \| cs find g <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>vi :vsp \| cs find i <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>vs :vsp \| cs find s <c-r>=expand("<cword>")<cr><cr>
"nmap <c-[>vt :vsp \| cs find t <c-r>=expand("<cword>")<cr><cr>



function! Find(...)
	let path="."
	if a:0==2
		let path=a:2
	endif
	let l:list=system("find ".path. " -name '".a:1."' | grep -v .svn ")
	let l:num=strlen(substitute(l:list, "[^\n]", "", "g"))
	if l:num < 1
		echo "'".a:1."' not found"
		return
	endif
	if l:num != 1
		let tmpfile = tempname()
		exe "redir! > " . tmpfile
		silent echon l:list
		redir END
		let old_efm = &efm
		set efm=%f

		if exists(":cgetfile")
			execute "silent! cgetfile " . tmpfile
		else
			execute "silent! cfile " . tmpfile
		endif

		let &efm = old_efm

		" Open the quickfix window below the current window
		botright copen
		call delete(tmpfile)
	endif
endfunction
command!  -nargs=* Find :call Find(<f-args>)



"autopen NERDTree and focus cursor in new document
"autocmd vimEnter * NERDTree
"autocmd vimEnter * wincmd p

" NERD Tree
let NERDTreeWinSize=20
let NERDTreeWinPos='right'
"显示隐藏文件
let NERDTreeShowHidden=1

" taglist
let Tlist_WinWidth=20

map <F3> :NERDTreeToggle<CR>
map <F2> :TlistToggle<CR>
map <F4> :cwindow<CR>


" add file comment.(添加注释)
map <leader>li :call AddLicense()<CR>
function! AddLicense()
	call append(line(".") + 0,"// Copyright (c) 2012-2018 The Elastos Open Source Project")
	call append(line(".") + 1,"// Distributed under the MIT software license, see the accompanying")
	call append(line(".") + 2,"// file COPYING or http://www.opensource.org/licenses/mit-license.php.")
endfunction

" add main function.(添加main框架)
map <leader>main :call Addmain()<CR>
function Addmain()
	call append(line(".") + 0,"#include <stdio.h>")
	call append(line(".") + 1,"")
	call append(line(".") + 2,"int main(int argc, char * argv[])")
	call append(line(".") + 3,"{")
	call append(line(".") + 4,"")
	call append(line(".") + 5,"\treturn 0;")
	call append(line(".") + 6,"}")
	call append(line(".") + 7,"")
endfunction

" 改变光标形状
if exists('$ITERM_PROFILE')
	if exists('$TMUX')
		let &t_SI = "\<Esc>[3 q"
		let &t_EI = "\<Esc>[0 q"
	else
		let &t_SI = "\<Esc>]50;CursorShape=1\x7"
		let &t_EI = "\<Esc>]50;CursorShape=0\x7"
	endif
end
