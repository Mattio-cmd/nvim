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
    Plug 'preservim/nerdcommenter'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }
    Plug 'Junegunn/fzf.vim'
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

"    Plug 'airblade/vim-rooter'
"    Plug 'mhinz/vim-signify'
"    Plug 'tpope/vim-fugitive'
"    Plug 'tpope/vim-rhubarb'
"    Plug 'junegunn/gv.vim'
    Plug 'jremmen/vim-ripgrep'
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
      Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
      Plug 'ryanoasis/vim-devicons'

    "Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-repeat'
    " Ranger integration
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    call plug#end()

" enable tabline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
"let g:airline_statusline_ontop=1
let g:rehash256 = 1
let base16colorspace=256  " Access colors present in 256 colorspace
let g:airline#extensions#hunks#enabled=0


" For the term
function Term()
 execute "below term++rows=15"
endfunction
command! Term call Term()

" NERDTree to start automatically
"autocmd VimEnter * NERDTree | wincmd p


"Gruvbox
colorscheme gruvbox-material
map <leader>gd <Plug>(coc-definition)
nmap <leader>dr <Plug>(coc-references)
nmap <C-p> :GFiles<CR>

set background=dark
if executable('rg')
    let g:rg_derive_root='true'
endif

" For gruvbox dark
let g:gruvbox_contrast_light = 'soft' 


" Always show tabs
set showtabline=2

" We don't need to see things like -- INSERT -- anymore
set noshowmode


" For nerdtree cool fonts
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

let g:NERDTreeHighlightFolders = 1 " enables folder icon highlighting using exact match
let g:NERDTreeHighlightFoldersFullName = 0 " highlights the folder name

" If you have vim-devicons you can customize your icons for each file type.
let g:NERDTreeExtensionHighlightColor = {} "this line is needed to avoid error
let g:NERDTreeExtensionHighlightColor['css'] = '' "assigning it to an empty string will skip highlight

let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

