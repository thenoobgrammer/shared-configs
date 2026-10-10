set nocompatible
syntax on
filetype plugin indent on

set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set visualbell
set t_vb=

augroup go_format
    autocmd!
    autocmd BufWritePre *.go LspDocumentFormatSync
augroup END

augroup go_lsp
    autocmd!
    autocmd User lsp_setup call lsp#register_server({
        \ 'name': 'gopls',
        \ 'cmd': {server_info -> ['gopls']},
        \ 'allowlist': ['go'],
        \ })
    autocmd FileType go setlocal omnifunc=lsp#complete
augroup END

autocmd FileType go nnoremap <buffer> gd :LspDefinition<CR>
autocmd FileType go nnoremap <buffer> K :LspHover<CR>

nnoremap <C-e> :Explore<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-q> :wq<CR>
nnoremap <A-Up> :m .-2<CR>
nnoremap <A-Down> :m .+1<CR>
nnoremap Q 0
nnoremap E $
nnoremap <C-f> /
nnoremap q b
nnoremap <C-Down> 10j<CR>
nnoremap <C-Up> 10k<CR>
nnoremap <C-c> yy<CR>
nnoremap <C-z> u<CR>
nnoremap <S-Down> Vj
nnoremap <S-Up> Vk

inoremap <C-z> u<CR>
inoremap <C-e> <C-o>:Explore<CR>
inoremap <C-s> <C-o>:w<CR>
inoremap <C-q> <Esc>:wq<CR>
inoremap <A-Up> <C-o>:m .-2<CR>
inoremap <A-Down> <C-o>:m .+1<CR>
inoremap <C-f> <Esc>/

xnoremap <S-Down> j
xnoremap <S-Up> k

let mapleader = " "
nnoremap <leader>s :source ~/.vimrc<CR>
nnoremap <leader>e i<CR>
nnoremap <leader>v p<CR>
nnoremap <leader>c y<CR>
nnoremap <leader>cc yy<CR>
nnoremap <leader>w :LspHover<CR>
