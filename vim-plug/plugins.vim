" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

set exrc
set secure
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
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }
    Plug 'Junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    Plug 'morhetz/gruvbox'
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    Plug 'jremmen/vim-ripgrep'
    Plug 'vim-utils/vim-man'
    Plug 'lyuts/vim-rtags'
    Plug 'vimwiki/vimwiki'
    Plug 'mhinz/vim-startify'
    Plug 'sainnhe/gruvbox-material'

    "git
Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-repeat'



call plug#end()

" enable tabline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme='gruvbox-material'
"let g:airline_statusline_ontop=1
let g:rehash256 = 1
let base16colorspace=256  " Access colors present in 256 colorspace

"Gruvbox
colorscheme gruvbox-material 
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>dr <Plug>(coc-references)
nmap <C-p> :GFiles<CR>

set background=dark
if executable('rg')
    let g:rg_derive_root='true'
endif

" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode


