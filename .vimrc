set tabstop=2
set expandtab
set shiftwidth=2
set softtabstop=2
set notitle
set nobackup
set autoread
set noswapfile
set hidden "編集中でも他のファイルを開けるようにする
set backspace=indent,eol,start
set browsedir=buffer
set number
set showmatch "括弧の対応をハイライト
set autoindent
set smartindent
" set encoding=utf-8
" set enc=utf-8
set fenc=utf-8
set fencs=utf-8,euc-jp,cp932
" set fileencoding=utf-8,euc-jp,cp932
set incsearch
" 10進数にする
set nrformats=
set hlsearch "search result heightlist
set nobomb
set completeopt -=preview
set previewheight=30
set clipboard=unnamed
set foldmethod=manual
set splitright "縦分割時は右
set splitbelow
set lazyredraw
" set ttyfast
set noundofile
set ambiwidth=double
set conceallevel=0
" set colorcolumn=80 "80文字のとろこに線を引く
"
" set cc=80
" " let &colorcolumn=join(range(81,999),",")
" highlight ColorColumn ctermbg=235 guibg=#2c2d27
" " let &colorcolumn="80,".join(range(120,999),",")
" set list " 不可視文字の可視化
" set listchars=tab:>-,trail:-
filetype off
" set backspace=0

"default keymap
nnoremap <c-e> $
cnoremap <c-a> <HOME>
cnoremap <c-e> <END>
inoremap <c-a> <ESC>^i
inoremap <c-e> <ESC>$a
" inoremap ' ''<Left>
" inoremap " ""<left>
inoremap { {}<Left>
" inoremap [ []<left>
" inoremap ( ()<left>
" exit
"
inoremap jj <Esc><Esc>
inoremap jk <Esc><Esc>
inoremap <C-G> <Esc><Esc>
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <tab> <C-w><C-w>
" inner line
inoremap <c-o> <esc>o
" delete line
inoremap <C-D> <esc>ddi

" inoremap <C-x><C-c> <C-x><C-]> 
if has('nvim')
  nnoremap <C-h> <C-w>h
  " nmap <BS> <C-T>
  nmap <BS> <C-W>h
  imap <C-h> <LEFT>
  nnoremap <space>j :<C-u>split term://zsh<cr>
  nnoremap <space>l :<C-u>vsplit term://zsh<cr>
  " nnoremap <c-r> :<C-u>split term://zsh<cr>
  nnoremap <space>p :<C-u>vsplit term://psysh<cr>
  " nnoremap <space>p :<C-u>vsplit term://mycli -p root<cr>
  autocmd BufWinEnter,WinEnter term://* startinsert 
  au BufEnter * if &buftype == 'terminal' | set modifiable | endif
  autocmd BufLeave term://* stopinsert
  :au TermClose * call feedkeys('<cr>')

  tnoremap <C-j> <C-\><C-n><C-w>j
  tnoremap <C-k> <C-\><C-n><C-w>k
endif

noremap ; :
nnoremap 0 ^
nnoremap 9 <C-^>
vnoremap v i"
nnoremap <C-]> g<C-]> 
nnoremap + <C-a>
nnoremap - <C-x>
nnoremap Y y$
nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k
nnoremap <Down> gj
nnoremap <Up>   gk


nnoremap <Del> <C-T>

inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-h> <Left>
inoremap <C-l> <Right>

"set command mode
if has('nvim')
  command! Ev edit ~/.vimrc
  command! Rv source ~/.vimrc
  " nmap <BS> <C-W>h
else
  command! Ev edit ~/.vimrc
  command! Rv source ~/.vimrc
endif

vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)
vnoremap 9 $

set nofoldenable      
set foldmethod=indent   "fold based on indent
set foldlevel=2        "this is just what i use


" vim plugin start
call plug#begin('~/.vim/plugged')
Plug 'Shougo/vimproc', { 'do': 'make' }
Plug 'Raimondi/delimitMate'
" Plug 'Yggdroot/indentLine'

" depend on ctrlp
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
" let g:ctrlp_funky_sort_by_mru = 1

Plug 'ivalkeen/vim-ctrlp-tjump'
Plug 'JazzCore/ctrlp-cmatcher', { 'do': './install.sh' }
Plug 'nixprime/cpsm', {'do': './install.sh'}

Plug 'Shougo/vimfiler'
Plug 'Shougo/unite.vim'
Plug 'Shougo/context_filetype.vim'
Plug 'keith/sourcekittendaemon.vim'
Plug 'terryma/vim-multiple-cursors'

" git
Plug 'tpope/vim-fugitive'
Plug 'kana/vim-textobj-indent'
" Plug 'simeji/winresizer'

"javascript"
Plug 'pangloss/vim-javascript'
Plug 'jelera/vim-javascript-syntax'
Plug 'jiangmiao/simple-javascript-indenter'
Plug 'othree/es.next.syntax.vim'
Plug 'othree/yajs.vim'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'mxw/vim-jsx'
Plug 'myhere/vim-nodejs-complete'
" Plug 'marijnh/tern_for_vim', { 'do': 'npm install' }

" autocmd FileType javascript setlocal omnifunc=nodejscomplete#CompleteJS
let g:node_usejscomplete = 1
"

" test tool
Plug 'benekastah/neomake'

" golang
Plug 'google/vim-ft-go'
Plug 'fatih/vim-go'
Plug 'nsf/gocode'
Plug 'vim-jp/vim-go-extra'

" php
Plug 'xsbeats/vim-blade'
Plug 'StanAngeloff/php.vim'
Plug 'tobyS/pdv'
Plug 'akiyan/vim-textobj-php'
" Plug 'alvan/vim-php-manual'
" Plug 'phpfmt/vim-phpfmt'

" python
Plug 'davidhalter/jedi-vim'
" Plug 'lambdalisue/vim-pyenv'

" ctag
Plug 'soramugi/auto-ctags.vim'
Plug 'glidenote/memolist.vim'

" infra
Plug 'ekalinin/Dockerfile.vim'

" utility
Plug 'kana/vim-textobj-user'
Plug 'akiyan/vim-textobj-php'
Plug 'thinca/vim-quickrun'
Plug 'thinca/vim-ref'
Plug 'bling/vim-airline'
" Plug 'joonty/vdebug'
Plug 'tpope/vim-eunuch'
Plug 'stephpy/vim-yaml'
Plug 'elzr/vim-json'
Plug 'LeafCage/yankround.vim'
Plug 'tomtom/tcomment_vim'
Plug 'thinca/vim-qfreplace'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'rking/ag.vim'
Plug 'terryma/vim-expand-region'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-easy-align'

" color
Plug 'tejr/sahara'
Plug 'zenorocha/dracula-theme', {'rtp': 'vim'}
Plug 'toupeira/vim-desertink'

" " web
Plug 'kchmck/vim-coffee-script'
Plug 'othree/html5.vim'
Plug 'mattn/webapi-vim'
Plug 'mattn/emmet-vim'
Plug 'JulesWang/css.vim'
Plug 'hail2u/vim-css3-syntax'
" Plug 'groenewege/vim-less'
Plug 'cakebaker/scss-syntax.vim'
"
" "doc
Plug 'rizzatti/funcoo.vim'
Plug 'rizzatti/dash.vim'

Plug 'Valloric/YouCompleteMe', { 'do': './install.sh --gocode-completer --clang-completer --tern-completer' }
Plug 'SirVer/ultisnips'
let g:UltiSnipsUsePythonVersion=2
let g:UltiSnipsSnippetsDir = '~/dots/UltiSnips'
Plug 'honza/vim-snippets'
"
" " markdown
Plug 'tpope/vim-markdown'
Plug 'plasticboy/vim-markdown'
Plug 'junegunn/vim-xmark'


call plug#end()

syntax on
filetype plugin indent on 

"
set cursorline
hi cursorline cterm=none term=none
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
highlight CursorLine guibg=#303000 ctermbg=234


" set color
" set t_Co=256
colorscheme sahara 
" colorscheme dracula 
" colorschem desertink

"set help
noremap <ESC><ESC> :nohlsearch<CR>
autocmd FileType help nnoremap <buffer> q <C-w>c
"
"set matcher

if has('nvim')

  tnoremap <Esc> <C-\><C-n>
  tnoremap <A-h> <C-\><C-n><C-w>h
  tnoremap <C-w>j <C-\><C-n><C-w>j
  tnoremap <C-w>k <C-\><C-n><C-w>k
  tnoremap <C-w>l <C-\><C-n><C-w>l
  tnoremap <C-w>h <C-\><C-n><C-w>h

else
  source $VIMRUNTIME/macros/matchit.vim
  let b:match_words = '<:>,<\@<=tag>:<\@<=/tag>'
endif


" setting golang configure
if $GOROOT != ''
  set rtp+=$GOROOT/misc/vim
endif

exe "set rtp+=".globpath($GOPATH, "src/github.com/nsf/gocode/vim")
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
autocmd FileType go :highlight goErr cterm=bold ctermfg=214
autocmd FileType go :match goErr /\<err\>/

let g:go_fmt_command = "goimports"
" let g:go_fmt_fail_silently = 1
" let g:go_fmt_autosave = 1


nnoremap  [unite]   <Nop>
nmap    f [unite]
nnoremap [unite]n :UltiSnipsEdit<CR>
" nnoremap [unite]n :NeoSnippetEdit<CR>

" vimfiler
nnoremap [unite]r :<C-u>VimFilerCurrentDir -toggle -find<Cr>
nnoremap [unite]e :<c-u>VimFilerBufferDir -toggle -find<cr>
nnoremap [unite]p :<c-u>VimFiler -toggle -project<cr>

let g:vimfiler_as_default_explorer = 1
let g:vimfiler_safe_mode_by_default = 0
" let g:vimfiler_enable_auto_cd = 1
let g:vimfiler_tree_leaf_icon = ' '
let g:vimfiler_tree_opened_icon = '▾'
let g:vimfiler_tree_closed_icon = '▸'
let g:vimfiler_file_icon = '-'
let g:vimfiler_marked_file_icon = '*'

autocmd! FileType vimfiler call s:my_vimfiler_settings()
function! s:my_vimfiler_settings()
    nnoremap <silent><buffer><expr> p vimfiler#do_action('project_cd')
    nmap <buffer><expr><CR> vimfiler#smart_cursor_map("\<Plug>(vimfiler_expand_tree)", "\<Plug>(vimfiler_edit_file)")
    nmap <buffer><expr> o vimfiler#smart_cursor_map("\<Plug>(vimfiler_expand_tree)", "\<Plug>(vimfiler_edit_file)")
    nmap <buffer><expr> s vimfiler#smart_cursor_map("\<Plug>(vimfiler_select_sort_type)", "\<Plug>(vimfiler_expand_tree)")
    nnoremap <buffer> b :CtrlPBookmarkDirAdd<CR>
endfunction

function! s:find_git_root()
  return system('git rev-parse --show-toplevel 2> /dev/null')[:-2]
endfunction

command! ProjectFiles execute 'Files' s:find_git_root()


" ctrlp
nnoremap [unite]a :<C-u>CtrlprojEdit<cr>
" nnoremap <c-f> :<C-u>ProjectFiles<cr>
nnoremap [unite]f :<C-u>ProjectFiles<cr>
nnoremap <space>e :<C-u>CtrlPFunky<cr>
nnoremap <silent> <c-f> :let g:cpsm_match_empty_query = 0<:<C-u>CtrlP<cr>
nnoremap <silent> [unite]j :let g:cpsm_match_empty_query = 0<:<C-u>CtrlPMRU<cr>
nnoremap [unite]k :<C-u>CtrlPCurFile<cr>

let g:ctrlp_map = '<c-p>'
" let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_extensions = ['mixed', 'bookmarkdir', 'funky']
let g:ctrlp_open_new_file = 'r'
let g:ctrlp_mruf_relative = 1
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:10,results:10'
let g:ctrlp_use_migemo = 1
let g:ctrlp_regexp = 0
let g:ctrlp_mruf_max            = 10000 " MRUの最大記録数
let g:ctrlp_mruf_exclude = '.git/.*' " MacOSX/Linux
let g:ctrlp_mruf_save_on_update = 1
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_use_caching = 0
  let g:ctrlp_user_command = 'ag %s -l -i --nocolor --nogroup --ignore ''.git''  --ignore ''.DS_Store'' --ignore ''*.png'' --ignore ''*.jpg'' --hidden -g ""'
endif

" let g:ctrlp_match_func = {'match' : 'matcher#cmatch' }
let g:ctrlp_match_func = {'match': 'cpsm#CtrlPMatch'}
let g:ctrlp_match_current_file = 1

let g:cpsm_highlight_mode = 'basic'
let g:cpsm_match_empty_query = 0

nnoremap [unite]a :<C-u>CtrlprojEdit<cr>
" nnoremap [unite]f :<C-u>Files<cr>
nnoremap <c-f> :let g:cpsm_match_empty_query = 1 :<C-u>CtrlP<cr>
nnoremap <silent> [unite]j :let g:cpsm_match_empty_query = 0 :<C-u>CtrlPMRU<cr>
nnoremap [unite]f :<C-u>ProjectFiles<cr>
nnoremap <space>e :<C-u>CtrlPFunky<cr>
nnoremap [unite]k :<C-u>CtrlPCurFile<cr>
nnoremap <cr> :CtrlPtjump<cr>
vnoremap <c-]> :CtrlPtjumpVisual<cr>
let g:ctrlp_tjump_only_silent = 1


" git fugitive
nnoremap <space>d :<C-u>Gdiff<cr>
nnoremap <space>f :<C-u>Gstatus<cr>
nnoremap <space>' :<C-u>Gitv --all<cr>
nnoremap <space>; :<C-u>Gitv! --all<CR>
nnoremap <space>b :<C-u>Gblame<cr>
nnoremap <space>p :<C-u>Gpush<cr>
" nnoremap <space>o :<C-u>only<CR>
set statusline=%<%F\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P
autocmd QuickFixCmdPost *grep* cwindow

" ref
let g:ref_phpmanual_path = $HOME . '/.vim/refs/php-chunked-xhtml'
let g:ref_laravel_path = $HOME . '/Library/Application%20Support/Dash/DocSets/Laravel/Laravel.docset/Contents/Resources/Documents/laravel.com/api/5.0/index.html'
let g:ref_use_vimproc = 1
autocmd FileType ref call s:initialize_ref_viewer()
function! s:initialize_ref_viewer()
  nmap <buffer> b <Plug>(ref-back)
  nmap <buffer> f <Plug>(ref-forward)
  nnoremap <buffer> q <C-w>c
  setlocal nonumber
  " ... and more settings ...
endfunction

" emmet plugin
let g:user_emmet_install_global = 0
autocmd FileType html,blade,css,sass,scss EmmetInstall
autocmd FileType html,blade,css,sass,scss imap <buffer><expr><tab>
    \ emmet#isExpandable() ? "\<plug>(emmet-expand-abbr)" :
    \ "\<tab>"
" let g:user_emmet_settings = webapi#json#decode(join(readfile(expand('~/dots/snippets.json')), "\n"))
let g:use_emmet_complete_tag = 1
let g:user_emmet_expandabbr_key = ',,'
let g:html_indent_tags = 'li\|p'

autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete

autocmd FileType python setlocal omnifunc=jedi#completions
" let g:jedi#completions_enabled = 1
" let g:jedi#auto_vim_configuration = 0


" surrond plugin
" autocmd filetype php let b:surround_45 = "<?php \r ?>"
autocmd filetype blade let b:surround_{char2nr("{")} = "{{ \r }}"
autocmd filetype blade let b:surround_{char2nr("e")} = "{!! \r !!}"

" cofofee plugin
let coffee_make_options = '--bare'
autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
autocmd QuickFixCmdPost * nested cwindow | redraw!
let coffee_indent_keep_current = 1
let coffee_watch_vert = 1
let coffee_linter = '/usr/local/bin/coffeelint'
" autocmd BufWritePost *.coffee silent make!

" ctags plugin
let g:auto_ctags = 1
let g:auto_ctags_directory_list = ['.git']
let g:auto_ctags_bin_path = '/usr/local/bin/ctags'
" let g:auto_ctags_filetype_mode = 1
let g:auto_ctags_tags_args = '--exclude=storage --fields=+aimS --languages=php --tag-relative --recurse --sort=yes  --append=no'
set tags+=.git/tags

" like comment
if !exists('g:tcomment_types')
  let g:tcomment_types = {}
endif
let g:tcomment_types = {
      \'blade_surround' : "{{-- %s --}}",
\}

au FileType blade nmap <buffer><C-_><C-_> :TCommentAs blade_surround<CR>
au FileType blade vmap <buffer><C-_><C-_> :TCommentAs blade_surround<CR>

"yank plugin
nmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)

" surround bindings
xmap " S"
xmap ' S'
xmap [ S[
xmap ( S(
xmap { S{

" easy align plugin
vmap <Enter> <Plug>(EasyAlign)

" quickRun
nnoremap <space>r :<C-u>QuickRun<CR>
let g:quickrun_config = {}
let g:quickrun_config = {
\   '*': {
\       'runmode': 'async:remote:vimproc',
\       'split': 'vertical'
\}
\}

let g:ycm_max_diagnostics_to_display = 10
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_complete_in_comments_and_strings = 1
let g:ycm_semantic_triggers = {}
let g:ycm_semantic_triggers['php'] =  ['->']
let g:ycm_semantic_triggers['coffee'] =  ['.']
let g:ycm_semantic_triggers['scss'] =  ['re!^\s*', 're!:\s*']
" let g:ycm_semantic_triggers['css'] =  ['re!^\s*', 're!:\s*']
let g:ycm_key_list_select_completion   = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:ycm_complete_in_comments = 1 
" let g:ycm_collect_identifiers_from_comments_and_strings = 1 
" au FileType php let g:ycm_cache_omnifunc = 0
let g:ycm_filetype_blacklist = {'unite': 1,}

" checker
let g:neomake_javascript_eshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_php_enabled_makers = ['php']
let g:neomake_enabled_makers = ['makeprg']

let g:neomake_error_sign = {
    \ 'text': 'E>',
    \ 'texthl': 'ErrorMsg',
    \ }

au BufNewFile,BufRead *.php setlocal iskeyword+=$ noexpandtab tabstop=4 shiftwidth=4
au BufNewFile,BufRead *blade.php setlocal iskeyword+=$ expandtab tabstop=2 shiftwidth=2 softtabstop=2 autoindent
" autocmd! BufWritePost * Neomake
autocmd! BufWritePost *.js,*.php,*.py,*.json Neomake
" let g:neomake_open_list = 1

" set UltiSnips
let g:UltiSnipsExpandTrigger       = "<tab>"
let g:UltiSnipsJumpForwardTrigger  = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
let g:UltiSnipsEditSplit           = "vertical"

" plugin json
let g:vim_json_syntax_conceal = 0
