set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set spell
set visualbell
 
set hlsearch
set smartcase
set incsearch
 
set autoindent
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
 
set undolevels=1000
set backspace=indent,eol,start

set nocompatible

inoremap jk <Esc>
tnoremap jk <C-\><C-n>

" toggle spell checking in normal and insert mode
nnoremap <silent> <F6> :set invspell<cr>
inoremap <silent> <F6> <C-O>:set invspell<cr>

" toggle buffers
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

" esc to turn off search highlighting
nnoremap <silent> <esc> :noh<cr>


" search down into subfolders
" provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu
