"FIRST do : curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
set autoindent
set nocindent
set nosmartindent
set indentexpr=
set tabstop=8
set expandtab
set shiftwidth=4
set softtabstop=4
filetype indent on
set encoding=utf-8

"to use mouse
set mouse=a

"easier than \
let mapleader = " "

set history=200

"to search on recently opened files
nmap <leader>b :CtrlPBuffer<CR>

"to search on tags
nmap <leader>t :CtrlPTag<CR>

"disable automatic syntax checking after :w 
"it's because sometimes it's too slow
let g:syntastic_mode_map = {"mode": "passive"}

"highlight all occurrences when searching for a pattern
set hlsearch

"show tags of the file
nmap <F3> :TagbarToggle<CR>

"show tree
nmap <F2> :NERDTreeToggle<CR>

"check syntax
nmap <F5> :SyntasticCheck

call plug#begin('~/.vim/plugged')
" fancy tree
Plug 'scrooloose/nerdtree'
" change text within a context (a string for instance)
Plug 'tpope/vim-surround'
" FUzzy search
Plug 'kien/ctrlp.vim'
"Syntax checking
Plug 'scrooloose/syntastic'
" show all tags
Plug 'majutsushi/tagbar'
"comment several lines
Plug 'scrooloose/nerdcommenter'
" completion
Plug 'ervandew/supertab'
"search on files
Plug 'mileszs/ack.vim'
"write todo files
Plug 'irrationalistic/vim-tasks'
"save tags automatically
Plug 'ludovicchabant/vim-gutentags'
"autopep8
Plug 'tell-k/vim-autopep8'
call plug#end()


let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_python_checkers = ['flake8']
"let g:ycm_python_binary_path = '/home/mehdi/miniconda2/envs/py35/bin/python'

let g:gutentags_file_list_command = 'find . -name "*.py"'

let g:github_colors_soft = 1
colorscheme darkblue
