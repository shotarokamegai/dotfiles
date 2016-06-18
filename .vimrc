set runtimepath+=~/.vim/bundle/neobundle.vim/
 
" Required:
call neobundle#begin(expand('~/.vim/bundle/'))
 
NeoBundleFetch 'Shougo/neobundle.vim'
 
" original repos on github
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Lokaltog/vim-easymotion'
NeoBundle 'rstacruz/sparkup', {'rtp': 'vim/'}
NeoBundle 'tpope/vim-rails.git'
" vim-scripts repos
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
" non github repos
NeoBundle 'joonty/vdebug.git'
NeoBundle 'ctrlp.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'tejr/sahara.git'
NeoBundle 'tomtom/tcomment_vim.git'
NeoBundle 'bling/vim-airline'
NeoBundle 'thinca/vim-quickrun.git'
NeoBundle 'cakebaker/scss-syntax.vim'
NeoBundle 'tpope/vim-eunuch.git'
NeoBundle 'AndrewRadev/switch.vim'  
NeoBundle 'rhysd/clever-f.vim'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-vinegar'
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'junegunn/vim-easy-align'
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'tpope/vim-surround'
NeoBundle 'JazzCore/ctrlp-cmatcher'
" NeoBundle 'Valloric/YouCompleteMe'
NeoBundle 'thinca/vim-qfreplace'
NeoBundle 'othree/html5-syntax.vim'
NeoBundle 'mattn/gist-vim'
NeoBundle 'mattn/webapi-vim'
NeoBundle 'osyo-manga/vim-watchdogs'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Vim-phpfmt'

" NeoBundle 'neosnippet-snippets'
" NeoBundle 'scrooloose/nerdtree'
 
call neobundle#end()
 
" Required:
filetype plugin indent on
 
" 未インストールのプラグインがある場合、インストールするかどうかを尋ねてくれるようにする設定
" 毎回聞かれると邪魔な場合もあるので、この設定は任意です。
NeoBundleCheck
 
"-------------------------
" End Neobundle Settings.
"-------------------------

set number
set noswapfile
syntax on
syntax enable
set t_Co=256
colorscheme sahara
" encoding

set scrolloff=5
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
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
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

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>


" Plugin key-mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)
 
" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"
 
" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif
set fileencodings=utf-8,euc-jp,sjis,cp932,iso-2022-jp
