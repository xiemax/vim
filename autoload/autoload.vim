" Install Plug {{{
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
   \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif "}}}

augroup typescriptreact
  au!
  autocmd BufNewFile,BufRead *.tsx   set filetype=typescript
  autocmd BufNewFile,BufRead *.jsx   set filetype=javascript
augroup END

" Recover line position after return to buffer
autocmd BufReadPost *
 \ if line("'\"") > 0 && line("'\"") <= line("$") |
 \   exe "normal! g`\"" |
 \ endif


function! UseTabs()
  set tabstop=4     " Size of a hard tabstop (ts).
  set shiftwidth=4  " Size of an indentation (sw).
  set noexpandtab   " Always uses tabs instead of space characters (noet).
  set autoindent    " Copy indent from current line when starting a new line (ai).
endfunction

function! UseSpaces()
  set tabstop=2     " Size of a hard tabstop (ts).
  set shiftwidth=2  " Size of an indentation (sw).
  set expandtab     " Always uses spaces instead of tab characters (et).
  set softtabstop=0 " Number of spaces a <Tab> counts for. When 0, featuer is off (sts).
  set autoindent    " Copy indent from current line when starting a new line.
  set smarttab      " Inserts blanks on a <Tab> key (as per sw, ts and sts).
endfunction

call UseSpaces()

" Enable filetype plugins
" filetype plugin on
" filetype indent on
filetype plugin indent on

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Set to auto read when a file is changed from the outside
set autoread

" Configure backspace so it acts as it should act
set backspace=eol,start,indent

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Show line number
set number

set cursorline
set showmatch
set incsearch
set ignorecase

" Enable syntax highlighting
syntax enable
syntax on

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile
set hls

" Remember info about open buffers on close
set viminfo^=%

set nocompatible

set modifiable

au InsertLeave *.go,*.ts,*.js,*.tsx,*.jsx,*.py,*.sh write

let NERDTreeShowHidden=1

" autocmd FileType json autocmd BufWritePre <buffer> %!jq .
" autocmd FileType json autocmd  BufWritePre :normal gg=G
" autocmd  BufWritePre *.json :normal %!jq .
autocmd FileType json autocmd BufWritePre <buffer> %!python -m json.tool


