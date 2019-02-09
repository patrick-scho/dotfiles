set nocompatible
set shell=/bin/bash
filetype off
set number
set tabstop=2
set shiftwidth=2
set expandtab
set inccommand=nosplit
set foldcolumn=0
" Save folds
augroup AutoSaveFolds
  autocmd!
  autocmd BufWinLeave * silent mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" Plug 'sheerun/vim-polyglot'

Plug 'baabelfish/nvim-nim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

call plug#end()

syntax on
filetype plugin indent on

" deoplete
let g:deoplete#enable_at_startup = 1

" LanguageClient
set hidden
let g:LanguageClient_serverCommands = {
    \ 'javascript': ['javascript-typescript-stdio'],
    \ 'typescript': ['javascript-typescript-stdio'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap <F2> :call LanguageClient#textDocument_hover()<CR>
nnoremap <F3> :pc<CR>
