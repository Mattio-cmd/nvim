" __  __       _   _   _                                _
"|  \/  | __ _| |_| |_(_) ___         ___ _ __ ___   __| |
"| |\/| |/ _` | __| __| |/ _ \ _____ / __| '_ ` _ \ / _` |
"| |  | | (_| | |_| |_| | (_) |_____| (__| | | | | | (_| |
"|_|  |_|\__,_|\__|\__|_|\___/       \___|_| |_| |_|\__,_|
"

" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

set exrc 
set secure 
set encoding=utf-8                      " The encoding displayed
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nu
set relativenumber
set smartindent
set nowrap
set smartcase
set noswapfile
set nobackup
set undofile
set incsearch

augroup project
  autocmd!
  autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
   Plug 'sheerun/vim-polyglot'
    " File Explorer
    "Plug 'scrooloose/NERDTree'
    Plug 'preservim/nerdcommenter'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }
    "Plug 'Junegunn/fzf.vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

"    Plug 'airblade/vim-rooter'
"    Plug 'mhinz/vim-signify'
"    Plug 'tpope/vim-fugitive'
"    Plug 'tpope/vim-rhubarb'
"    Plug 'junegunn/gv.vim'
    "Plug 'jremmen/vim-ripgrep'
 "  Plug 'vim-utils/vim-man'
"    Plug 'lyuts/vim-rtags'
    " Plug 'vimwiki/vimwiki'
   Plug 'mhinz/vim-startify'
    
    " Color schemes
    "Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    Plug 'sainnhe/gruvbox-material'
    "Plug 'joshdick/onedark.vim'
    "Plug 'morhetz/gruvbox'
    
    " Dev icons
      "Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
      Plug 'ryanoasis/vim-devicons'

    "Plug 'tpope/vim-fugitive'
    "Plug 'tpope/vim-repeat'
    
    " Ranger integration
    "Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    call plug#end()

" enable tabline


"Gruvbox
colorscheme gruvbox-material

set background=dark
if executable('rg')
    let g:rg_derive_root='true'
endif

" For gruvbox dark
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_transparent_bg = 1

" This is for transparency
autocmd VimEnter * hi Normal ctermbg=none

