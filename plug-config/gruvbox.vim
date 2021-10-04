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
