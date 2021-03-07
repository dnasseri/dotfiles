execute pathogen#infect()

" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

filetype plugin on
filetype indent on

let g:clipboard = {
  \   'name': 'win32yank-wsl',
  \   'copy': {
  \     '+': 'win32yank.exe -i --crlf',
  \     '*': 'win32yank.exe -i --crlf',
  \   },
  \   'paste': {
  \     '+': 'win32yank.exe -o --lf',
  \     '*': 'win32yank.exe -o --lf',
  \   },
  \   'cache_enabled': 0,
  \ }
let g:mapleader = ","
let g:python3_host_prog = '/usr/bin/python3'
let mapleader = ","
let NERDTreeShowHidden=1

map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <ScrollWheelDown> <C-E>
map <ScrollWheelUp> <C-Y>
map j gj
map k gk

nnoremap <leader>a :Ack!
nnoremap <leader>cp :let @*=expand("%")<CR>
nnoremap <leader>t :FZF<cr>
nnoremap <leader>n :NERDTree<cr>
nnoremap <Space> :

set ai
set backspace=eol,start,indent
set clipboard+=unnamedplus
set colorcolumn=121
set encoding=utf8
set expandtab
set ffs=unix,dos,mac
set history=2000
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set lazyredraw
set mat=2
set mouse=a
set nobackup
set noerrorbells visualbell t_vb=
set noswapfile
set nowb
set number
set rtp+=/home/nassredean/.fzf
set shiftwidth=2
set showmatch
set si
set smartcase
set smarttab
set t_Co=256
set tabstop=2
set viminfo^=%
set whichwrap+=<,>,h,l
set wildignore+=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg
set wildignore=*.o,*.obj,*.otf,*.eot,*.ttf,*.woff,*.svg,tmp,node_modules
set wildmenu
set wrap

syntax enable
