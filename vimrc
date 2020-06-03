set nocompatible

execute pathogen#infect()
syntax on
filetype plugin indent on

let g:ycm_rust_src_path="/home/nobbele/development/rust-master/src"

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd BufEnter * NERDTreeMirror

"CTRL-t to toggle tree view with CTRL-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
"Set F2 to put the cursor to the nerdtree
nmap <silent> <F2> :NERDTreeFind<CR>
"CTRL-P to toggle terminal
tnoremap <silent> <C-P> <C-w>:ToggleTerminal<CR>
nnoremap <silent> <C-P> :ToggleTerminal<CR>

"Terminal options
let g:toggle_terminal#command = 'fish'
let g:toggle_terminal#position = 'botright'

"enable mouse support
set mouse=a
set number
set splitbelow
set hlsearch
set laststatus=2
