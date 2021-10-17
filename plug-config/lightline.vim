if !has('gui_running')
  set t_Co=256
endif

let g:lightline = {
      \ 'colorscheme': 'gruvbox_material',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'charvaluehex' ] ]
      \ },
      \ 'component_function': {
      \   'filename': 'LightlineFilename',
      \ },
      \ 'component': {
      \   'charvaluehex': '0x%B'
      \ },
      \ }

function! LightlineFilename()
  return &filetype ==# 'vimfiler' ? vimfiler#get_status_string() :
        \ &filetype ==# 'unite' ? unite#get_status_string() :
        \ &filetype ==# 'vimshell' ? vimshell#get_status_string() :
        \ expand('%:t') !=# '' ? expand('%:t') : '[No Name]'
endfunction

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
