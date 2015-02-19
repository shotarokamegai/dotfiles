set nocompatible               " be iMproved

filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'
" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
Plugin 'joonty/vdebug.git'
Plugin 'ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tejr/sahara.git'
Plugin 'tomtom/tcomment_vim.git'
Plugin 'bling/vim-airline'
Plugin 'thinca/vim-quickrun.git'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'tpope/vim-eunuch.git'
Plugin 'AndrewRadev/switch.vim'  
Plugin 'rhysd/clever-f.vim'
Plugin 'tpope/vim-endwise'
Plugin 'tpope/vim-vinegar'
" Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'Shougo/unite.vim'
Plugin 'mattn/emmet-vim'
Plugin 'junegunn/vim-easy-align'
Plugin 'Shougo/vimshell.vim'
Plugin 'tpope/vim-surround'
Plugin 'JazzCore/ctrlp-cmatcher'
" Plugin 'Valloric/YouCompleteMe'
Plugin 'thinca/vim-qfreplace'
Plugin 'othree/html5-syntax.vim'
Plugin 'mattn/gist-vim'
Plugin 'mattn/webapi-vim'
Plugin 'osyo-manga/vim-watchdogs'
Plugin 'Shougo/neosnippet.vim'
" Plugin 'honza/snipmate-snippets'
" Plugin 'Vim-phpfmt'
" Plugin 'neosnippet-snippets'
" Plugin 'scrooloose/nerdtree'
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" let g:vimfiler_as_default_explorer = 1
let g:neosnippet#snippets_directory='~/.vim/bundle/snipmate-snippets/snippets'


" ...
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
set number
set noswapfile
syntax on
syntax enable
set t_Co=256
colorscheme sahara
set encoding=utf-8
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set notitle
set nobackup
set autoread
set noswapfile
set hidden "$BJT=8Cf$G$bB>$N%U%!%$%k$r3+$1$k$h$&$K$9$k(B
set backspace=indent,eol,start
set browsedir=buffer
set number
set showmatch "$B3g8L$NBP1~$r%O%$%i%$%H(B
set autoindent
set smartindent
set encoding=utf-8
" set fileencoding=utf-8,euc-jp,cp932
set incsearch
" 10$B?J?t$K$9$k(B
set nrformats=
set hlsearch "search result heightlist
set nobomb
set nocompatible
set completeopt -=preview
set previewheight=30
set clipboard=unnamed
set foldmethod=manual
set splitright "$B=DJ,3d;~$O1&(B
set splitbelow
set lazyredraw
set ttyfast
set modifiable
set ambiwidth=double
set noundofile
:set write
nnoremap ; :
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" nnoremap q :q
let g:user_emmet_expandabbr_key = ',,'
" :vsp
" :10sp

"set matcher
source $VIMRUNTIME/macros/matchit.vim
let b:match_words = '<:>,<\@<=tag>:<\@<=/tag>'
let g:neocomplete#enable_at_startup = 1
" vimfiler
 "" $B<+F05/F0(B
"  autocmd VimEnter * VimFiler -split -simple -winwidth=30 -no-quit
 "" [:e .]$B$N$h$&$K5$7Z$K5/F0$G$-$k$h$&$K$9$k(B
"  let g:vimfiler_as_default_explorer = 1
 "" $B%;!<%U%b!<%I$N@_Dj(B(OFF
 let g:vimfiler_safe_mode_by_default=0
  
  " netrw$B$O>o$K(Btree view
  " let g:netrw_liststyle = 3
  " 'v'$B$G%U%!%$%k$r3+$/$H$-$O1&B&$K3+$/!#(B($B%G%U%)%k%H$,:8B&$J$N$GF~$lBX$((B)
  let g:netrw_altv = 1
  " 'o'$B$G%U%!%$%k$r3+$/$H$-$O2<B&$K3+$/!#(B($B%G%U%)%k%H$,>eB&$J$N$GF~$lBX$((B)
  let g:netrw_alto = 1
  " 'v'$B$d(B'o'$B$G3+$+$l$k?7$7$$%&%#%s%I%&$N%5%$%:$r;XDj$9$k(B
  let g:netrw_winsize = 80"
let g:ctrlp_map = '<c-f>'
" let g:ctrlp_cmd = 'CtrlP'
" let g:ctrlp_extensions = ['mixed', 'bookmarkdir', 'funky', 'git-log']
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_mruf_relative = 1
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
let g:ctrlp_use_migemo = 1
let g:ctrlp_regexp = 0
let g:ctrlp_mruf_max            = 10000 " MRU$B$N:GBg5-O??t(B
let g:ctrlp_mruf_exclude = '.git/.*' " MacOSX/Linux
let g:ctrlp_mruf_save_on_update = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_prompt_mappings = {
      \ 'PrtCurRight()':        ['<right>'],
      \ 'CreateNewFile()':      ['<c-o>'],
      \ 'ToggleType(1)':        ['<tab>', '<c-down>'],
      \ 'AcceptSelection("h")': ['<c-n>'],
      \ 'PrtDeleteEnt()':      ['<c-d>'],
      \ 'PrtClearCache()':      ['<c-l>']
      \ }

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_use_caching = 0
  let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup -g ""'
  let g:ctrlp_show_hidden = 0
endif

  noremap <Up> <Nop>
  noremap <Down> <Nop>
  noremap <Left> <Nop>
  noremap <Right> <Nop>
