" {{{ bundle-settings.vim

" Steve J. Losh @ https://bitbucket.org/sjl/dotfiles/src/default/vim/vimrc
" has settings I borrowed.

if exists('g:loaded_bundle_settings')
  finish
endif
let g:loaded_bundle_settings=1

" -------------------------------------------------------------------------- }}}
" {{{ Filetype and plugin defaults.

filetype on
filetype plugin indent on

" -------------------------------------------------------------------------- }}}
" {{{ Alphabetical listing of things I set.

" Some 'things' are defaults.  I document them as reminders to myself.

set autowrite
set clipboard+=unnamedplus
set colorcolumn=+1
set complete=.,w,b,u,t,i,kspell
set encoding=utf-8
set expandtab
" set fillchars='fold:-'
set foldlevel=20
set foldmethod=marker
set formatoptions=qrn1tj
set hlsearch
set ignorecase
set laststatus=2
set lazyredraw
set linebreak
set matchtime=3
set modelines=0
set mouse=nvi
set nobackup
set nocompatible
set norelativenumber
set noswapfile
set notimeout
set novisualbell
set number
set numberwidth=3
set path+=**
set printoptions=paper:A4,duplex:off,collate:n,syntax:y,number:y,top:5pc,right:2pc,bottom:5pc,left:2pc
set pyx=3
set shiftround
set shiftwidth=2
" Windows terminal is complaining???
" set showbreak=↪
set showmatch
set sidescroll=1
set sidescrolloff=10
set smartcase
set softtabstop=2
set splitbelow splitright
set synmaxcol=800
set tabstop=2
set textwidth=80
set title
set ttimeoutlen=10
if has('nvim')
  set undodir=~/.vim/undodir-nvim
  set signcolumn=auto
else
  set undodir=~/.vim/undodir
  if has("patch-8.1.1564")
    set signcolumn=auto
  endif
endif
set undofile
set virtualedit+=block
set nowrap
syntax on

colorscheme abstract

" -------------------------------------------------------------------------- }}}
" {{{ Show trailing whitespaces

set nolist                                    " Show trailing whitespaces
" Windows terminal is complaining???
" if &listchars ==# 'eol:$'                     " But only interesting whitespace
"   set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:-,nbsp:+
" endif

" -------------------------------------------------------------------------- }}}
" {{{ vim 8+ and neovim

" Note: 2021-02-16 move section to bundle-vim-terminal.vim
if has("patch-8.1.1564")
  set signcolumn=yes
else
  set signcolumn=yes
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
" {{{ Windoz Subsystem for Linux (WSL) clipboard.

" xsel is a Power Shell script located in my dotfiles repository.
if has('nvim')
  let g:man_hardwrap=1
  if g:os_wsl
    let g:clipboard = {
          \   'name': 'myClipboard',
          \   'copy': {
          \      '+': 'xsel --nodetach -i -b',
          \      '*': 'xsel --nodetach -i -b',
          \    },
          \   'paste': {
          \      '+': 'xsel -o -b',
          \      '*': 'xsel -o -b',
          \   },
          \   'cache_enabled': 1,
          \ }
  endif
endif

" -------------------------------------------------------------------------- }}}
