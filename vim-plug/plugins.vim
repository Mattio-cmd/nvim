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

    " LSP
    Plug 'neovim/nvim-lspconfig' 
    Plug 'neovim/nvim-lspconfig'
    Plug 'hrsh7th/nvim-compe'

  " nerdcomenter leader+cc
    Plug 'preservim/nerdcommenter'

    " Giga Chad color scheme
    Plug 'sainnhe/gruvbox-material'

    " Auto pairs for '(' '[' '{'
    "Plug 'jiangmiao/auto-pairs'

    " Airline & airline themes
    Plug 'nvim-lualine/lualine.nvim' 

    "nvim tree
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'kyazdani42/nvim-tree.lua'

    "" For a really cool preview of markdown files
    "Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
    
   Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }
   Plug 'Junegunn/fzf.vim'
   Plug 'glepnir/dashboard-nvim'
   "Plug 'jremmen/vim-ripgrep'

    
    "" Color schemes
    ""Plug 'kaicataldo/material.vim', { 'branch': 'main' }
    ""Plug 'joshdick/onedark.vim'
    "Plug 'morhetz/gruvbox'

    call plug#end()
