syntax enable

" Reload .vimrc automatically when it changes
autocmd! bufwritepost .vimrc source %

set nocompatible
set backspace=indent,eol,start
set number
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set smarttab
set showmatch
set incsearch
set hlsearch
set ignorecase
set smartcase
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%l,%v][%p%%]\ [LEN=%L]
set wildmenu
set wildmode=longest,list,full

set background=dark
colorscheme desert

" Easy navigation between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Easy navigation between tabs
map <C-Left> <Esc>:tabprevious<CR>
map <C-Right> <Esc>:tabnext<CR>

" Remove trailing whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

" show spaces and tabs
set list
set listchars=tab:»·,trail:·

