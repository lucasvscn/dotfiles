
" Reload .vimrc on save
autocmd BufWritePost .vimrc source %

" Set the lead to , instead of \
let mapleader = ","

" General settings
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent
set smarttab
set smartcase
set incsearch
set hlsearch
set ignorecase
set number
set showcmd
set cursorline
set laststatus=2
set colorcolumn=80

syntax on
set background=dark
set t_Co=256

" Easy navigation between windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Easy navigation between tabs
map <C-Left> <Esc>:tabprevious<CR>
map <C-Right> <Esc>:tabnext<CR>

" Trim trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Make trailling whitespace visible
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

" Options for shell scripts
autocmd BufNewFile,BufRead *.sh set filetype=sh
autocmd FileType sh setlocal et ts=2 sw=2 sts=2 ai

" NERDTree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
