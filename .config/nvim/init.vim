set nocompatible
set shell=/bin/bash
filetype off
set relativenumber
set tabstop=2
set shiftwidth=2
set expandtab
set inccommand=nosplit

" vim-plug
call plug#begin('~/.local/share/nvim/plugged')

" Plug 'sheerun/vim-polyglot'

Plug 'baabelfish/nvim-nim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

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

" Vim Latex Live Preview
let g:livepreview_previewer = "zathura"

noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj
noremap  <buffer> <silent> <Home> g<Home>
noremap  <buffer> <silent> <End>  g<End>
inoremap <buffer> <silent> <Up>   <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj
inoremap <buffer> <silent> <Home> <C-o>g<Home>
inoremap <buffer> <silent> <End>  <C-o>g<End>
