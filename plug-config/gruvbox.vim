"Gruvbox
"if has('termguicolors')
    "set termguicolors
"endif
if executable('rg')
    let g:rg_derive_root = 'true'
endif

" For gruvbox dark
set background=dark
let g:gruvbox_material_background = 'hard'
let g:gruvbox_material_transparent_background = 1 " This enables transparency
colorscheme gruvbox-material

" This is for transparency in case that the other options doesnt work for
" whatever reason
"autocmd VimEnter * hi Normal ctermbg=none
