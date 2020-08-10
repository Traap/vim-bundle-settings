" {{{ bundle-settings.vim 

" Steve J. Losh @ https://bitbucket.org/sjl/dotfiles/src/default/vim/vimrc
" has settings I borrowed.

if exists('g:loaded_bundle_settings')
  finish
endif
let g:loaded_bundle_settings=1

" -------------------------------------------------------------------------- }}}
" {{{ Leader

let g:mapleader = ","
let maplocalleader = ","
set tm=750                                   " Leader key timeout.

" -------------------------------------------------------------------------- }}}
" {{{ Filetype and plugin defaults.

filetype on
filetype plugin indent on

" -------------------------------------------------------------------------- }}}
" {{{ Alphabetical listing of things I set.

" Some 'things' are defaults.  I document them as reminders to myself.

set autowrite
set cmdheight=1
set clipboard+=unnamedplus
set colorcolumn=+1
set complete=.,w,b,u,t,i,kspell
set encoding=UTF-8
set expandtab
set fileformats=unix
set foldmethod=marker
set formatoptions=qrn1tj
set hlsearch
set ignorecase
set laststatus=2
set lazyredraw
set linebreak
set matchtime=3
set modelines=0
set nobackup
set nocompatible
set norelativenumber
set noswapfile
set notimeout
set novisualbell
set number
set numberwidth=1
set path+=**
set printoptions=paper:A4,duplex:off,collate:n,syntax:y,number:y,top:5pc,right:2pc,bottom:5pc,left:2pc
set shiftround
set shiftwidth=2
set showbreak=↪
set showcmd
set showmatch
set showmode
set sidescroll=1
set sidescrolloff=10
if has("patch-8.1.1564")
  " Merge signcolumn and number column
  set signcolumn=number
else
  set signcolumn=yes
endif
set smartcase
set softtabstop=2
set splitbelow splitright
set synmaxcol=800
set tabstop=2
set textwidth=80
set title
set ttimeoutlen=10
set ttyfast
set t_vb=
set undodir=~/.vim/undodir
set undofile
set virtualedit+=block
set visualbell
set wrap
syntax on

" -------------------------------------------------------------------------- }}}
" {{{ Show trailing whitespaces

set nolist                                    " Show trailing whitespaces
if &listchars ==# 'eol:$'                     " But only interesting whitespace
  set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:-,nbsp:+
endif

" -------------------------------------------------------------------------- }}}
" {{{ neovim

if has('nvim')
  tnoremap <Esc> <C-\><C-n>
  set mouse=nvi
  behave xterm
endif

" -------------------------------------------------------------------------- }}}
" {{{ The Silver Search through ack.vim

let g:ackprg = 'ag --nogroup --nocolor --column'

" -------------------------------------------------------------------------- }}}
" {{{ vim-most-minimal-folds

let g:most_minimal_folds_line_count = 1

" -------------------------------------------------------------------------- }}}
" {{{ Commands that I find useful.

" It turns out I make the same typos Steve J. Losh does. 
command! -bang E e<bang>
command! -bang Q q<bang>
command! -bang W w<bang>
command! -bang QA qa<bang>
command! -bang Qa qa<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>
command! -bang Wqa wqa<bang>

" -------------------------------------------------------------------------- }}}
