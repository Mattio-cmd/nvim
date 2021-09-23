" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Markdown Preview
nnoremap <S-p> :MarkdownPreviewToggle<CR>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" For keeping search results centered
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" Undo break points
" 

" For NERDTRee
nnoremap <C-f> :NERDTreeToggle<CR>

" For fzf
nnoremap <C-o> :Files<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

" Close ONE single buffer BUT it will not be saved unless you do C-s
nnoremap <C-x> :bw<cr>

" Coc definitions
map <leader>gd <Plug>(coc-definition)
nmap <leader>dr <Plug>(coc-references)
nmap <C-p> :GFiles<CR>

" For the terminal
noremap <leader>/ :split<CR> :resize 10<CR> :term<CR> 

" For the BIG terminal
noremap <leader>p :split<CR> :resize 60<CR> :term<CR> 

" For spliting windows
nnoremap <C-v> :vsplit<CR>
nnoremap <S-h> :split<CR>
