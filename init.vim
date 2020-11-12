let g:python3_host_prog = '/usr/bin/python3'

" add pathogen
execute pathogen#infect()
set shell=/bin/zsh

" FZF
runtime macros/matchit.vim
set rtp+=/usr/local/opt/fzf
let g:fzf_layout = { 'down': '~20%' }
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" ITERM
" Change cursor in iTerm. Vertical bar in insert mode, block in normal mode
if $TERM_PROGRAM =~ "iTerm"
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif

" In iTerm the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

set wildignore=*.o,*.obj,*.otf,*.eot,*.ttf,*.woff,*.svg,app/assets/images,app/assets/fonts,vendor,public,features,tmp,node_modules
set wildignore+=*.swp,*.bak,*.pyc,*.class,*.jar,*.gif,*.png,*.jpg

" show status line by default
set laststatus=2

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results, because why wouldn't you
set hlsearch

" incremental search (search as you type, modern style)
set incsearch

" Enable filetype plugins
filetype plugin on
filetype indent on

" Enable syntax highlighting
syntax enable

set t_Co=256

" Visual command line completion using tab
set wildmenu

" Sets how many lines of history VIM has to remember
set history=700

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile

" Use spaces instead of tabs
set expandtab

" use smart tabs
set smarttab

set colorcolumn=121

" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" add line numbers
set number

" make realtive numbering
set relativenumber

 " Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif

" Remember info about open buffers on close
set viminfo^=%

" use system clipboard
set clipboard=unnamedplus

" set leader
let mapleader = ","
let g:mapleader = ","

" Move through windows using ctrl + movement key
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Resize windows
" resize horzontal split window
nmap <C-Up> <C-W>-<C-W>-
nmap <C-Down> <C-W>+<C-W>+
" resize vertical split window
nmap <C-Right> <C-W>><C-W>>
nmap <C-Left> <C-W><<C-W><

nnoremap <leader>n :NERDTree<cr>
nnoremap <leader>t :FZF<cr>
nnoremap <leader>a :Ack!
nnoremap <leader>cp :let @*=expand("%")<CR>

" change backspace to its regular function in command mode
:nnoremap <bs> X

" remap space to : in command mode
:nnoremap <Space> :

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Don't redraw while executing macros (good performance config)
set lazyredraw

" No annoying sound on errors
set noerrorbells visualbell t_vb=

" Delete trailing white space on save
function! TrimWhiteSpace()
    %s/\s\+$//e
endfunction

autocmd BufWritePre     *.rb :call TrimWhiteSpace()
