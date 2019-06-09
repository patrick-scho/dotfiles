set nocompatible
set shell=/bin/bash
filetype off
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set inccommand=nosplit

map <Space> <Leader>
set foldnestmax=1
set foldmethod=syntax
set foldlevelstart=1
nnoremap <Space> za
nnoremap <Tab> :bn<CR>
nnoremap <S-Tab> :bp<CR>

autocmd FileType nim nnoremap <CR> :!nim cpp -r main.nim<CR>

" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

Plug 'baabelfish/nvim-nim'

Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

Plug 'jdonaldson/vaxe'

"Plug 'w0rp/ale'

call plug#end()

syntax on
filetype plugin indent on

