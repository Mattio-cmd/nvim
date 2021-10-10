"Gruvbox
if executable('rg')
    let g:rg_derive_root = 'true'
endif

" For gruvbox dark
set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:gruvbox_transparent_bg = 0

" This is for transparency
autocmd VimEnter * hi Normal ctermbg=none
