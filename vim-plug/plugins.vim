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

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'

  " nerdcomenter leader+cc
    Plug 'preservim/nerdcommenter'

    " Giga Chad color scheme
    Plug 'sainnhe/gruvbox-material'

    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'

    " Airline & airline themes
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Lightline    
     "Plug 'itchyny/lightline.vim'

    " Dev icons
    Plug 'ryanoasis/vim-devicons'
  


" Other usefull plugins
    "" Coc for completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
  
    "" For a really cool preview of markdown files
    Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    
   Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }
   Plug 'Junegunn/fzf.vim'

    "Plug 'airblade/vim-rooter'
    "Plug 'mhinz/vim-signify'
"    Plug 'tpope/vim-fugitive'
"    Plug 'tpope/vim-rhubarb'
"    Plug 'junegunn/gv.vim'
    Plug 'jremmen/vim-ripgrep'
"    Plug 'vim-utils/vim-man'
"    Plug 'lyuts/vim-rtags'
    """ Plug 'vimwiki/vimwiki'
    """ File Explorer
    Plug 'scrooloose/NERDTree'
   Plug 'mhinz/vim-startify'
    
    "" Color schemes
    ""Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    ""Plug 'joshdick/onedark.vim'
    "Plug 'morhetz/gruvbox'
 "   Plug 'KeitaNakamura/neodark.vim'
    
    "" Dev icons
      Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    ""Plug 'tpope/vim-fugitive'
    ""Plug 'tpope/vim-repeat'
    
    "" Ranger integration
    ""Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    call plug#end()
