set nocompatible              " be iMproved, required
filetype off                  " required


syntax on

set cursorline
set ttyfast
set mouse=a
set noshowmatch
set hidden
set nu
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors


set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'flazz/vim-colorschemes'
Plugin 'gruvbox-community/gruvbox'
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'vim-utils/vim-man'
Plugin 'Valloric/YouCompleteMe'
Plugin 'mbbill/undotree'
Plugin 'sheerun/vim-polyglot'
Plugin 'phanviet/vim-monokai-pro'
Plugin 'vim-airline/vim-airline'
Plugin 'ctrlpvim/ctrlp.vim'



call vundle#end()            " required
filetype plugin indent on    " required
colorscheme monokai_pro
let g:lightline = {
     \ 'colorscheme': 'monokai_pro',
     \ } 

if executable('rg')
    let g:rg_derive_root='true'
endif

nnoremap <Space> <nop>
let mapleader="\<space>"

let loaded_matchparen=1
let g:netrw_browse_split=2
let g:netrw_banner=0
let g:netrw_winzize=25

nnoremap <silent><leader>gd :YcmCompleter GoToDeclaration<CR>
nnoremap <silent><leader>gr :YcmCompleter GoToReferences<CR>
nnoremap <silent><leader>rr :YcmCompleter RefactorRename<space>

nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>= :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>
nnoremap <leader>j <C-W>j<CR>
nnoremap <leader>k <C-W>k<CR>
nnoremap <leader>l <C-w>l<CR>
nnoremap <leader>h <C-W>h<CR> 
nnoremap <Leader>pv <C-W>v<CR>
nnoremap <leader>sv <C-w>s<CR>
