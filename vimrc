set nocompatible

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'itchyny/lightline.vim'

Plugin 'preservim/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/syntastic' 
Plugin 'jez/vim-superman'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'universal-ctags/ctags'

Plugin 'OmniSharp/omnisharp-vim'
Plugin 'ycm-core/YouCompleteMe'


call vundle#end()

filetype plugin indent on

set backspace=indent,eol,start
set ruler
set number
set showcmd
set incsearch
set hlsearch

set clipboard=unamed

syntax on

set mouse=a

set tags=./tags;,~/.vimtags

let g:easytags_events = ['BufReadPost','BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

set laststatus=2
set ve+=onemore

autocmd BufRead * let &l:modifiable = !&readonly

map <C-n> :NERDTreeToggle<CR>
map <C-f> :TagbarToggle<CR>
