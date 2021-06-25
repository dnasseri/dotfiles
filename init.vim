call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'mhartington/nvim-typescript', {'do': './install.sh'}
" For async completion
Plug 'Shougo/deoplete.nvim'
" For Denite features
Plug 'Shougo/denite.nvim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'tpope/vim-fugitive'
Plug 'junegunn/goyo.vim'
Plug 'preservim/nerdtree'
Plug 'tomlion/vim-solidity'
Plug 'kassio/neoterm'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dag/vim-fish'
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'leafgarland/typescript-vim'
Plug 'arcticicestudio/nord-vim'
Plug 'neovim/nvim-lspconfig'
Plug 'elzr/vim-json'
Plug 'tikhomirov/vim-glsl'

call plug#end()

inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Return to last edit position when opening files
autocmd BufReadPost *
      \ if line("'\"") > 0 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

augroup quickfix
  autocmd!
  autocmd QuickFixCmdPost make nested copen
augroup END

filetype plugin on
filetype indent on

highlight VertSplit cterm=NONE

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
let g:deoplete#enable_at_startup = 1
let mapleader = ","
let NERDTreeShowHidden=1
let g:airline_theme='nord'

map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l
map <ScrollWheelDown> <C-E>
map <ScrollWheelUp> <C-Y>
map j gj
map k gk

nnoremap <leader>a :Ag<CR>
nnoremap <leader>cp :let @*=expand("%")<CR>
nnoremap <leader>t :GFiles<cr>
nnoremap <leader>b :Buffers<cr>
nnoremap <leader>n :NERDTree<cr>
nnoremap <leader>g :Git blame<cr>
nnoremap <leader>x :Tnew<cr>
nnoremap <leader>f :Goyo<cr>
nnoremap <leader>v :<C-V>
nnoremap <Space> :

map <leader>vimrc :tabe ~/.config/nvim/init.vim<cr>
autocmd bufwritepost .vimrc source $MYVIMRC

set ai
set background=dark
set backspace=eol,start,indent
set clipboard+=unnamedplus
set colorcolumn=121
set encoding=utf8
set expandtab
set ffs=unix,dos,mac
set incsearch
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
set shell=/bin/fish
" set filetypes as typescriptreact
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescriptreact

syntax enable
colorscheme nord
