syntax on

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent

set number
set ruler

set ignorecase
set smartcase
set showmode
set showcmd
set visualbell

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

" Move up/down editor line (Useful when line is wrapped)
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

let g:is_bash=1
