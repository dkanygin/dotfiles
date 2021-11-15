set nocompatible              " be iMproved, required
filetype off                  " required
set number
set encoding=utf-8
set showcmd
set termguicolors

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'chriskempson/base16-vim'
Plugin 'mike-hearn/base16-vim-lightline'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmux-plugins/vim-tmux-focus-events'
Plugin 'itchyny/lightline.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'jnurmine/Zenburn'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
colorscheme zenburn 

let g:NERDTreeNodeDelimiter = "\u00a0"

let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode' ], [ 'filename' ] ],
    \   'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'cocstatus' ] ]
    \ },
    \ 'component_function': {
    \   'filename': 'LightlineFilename',
    \   'cocstatus': 'coc#status'
    \ },
\ }

function! LightlineFilename()
    return expand('%:t') !=# '' ? @% : '[No Name]'
endfunction

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

let python_highlight_all=1
syntax on

let g:NERDTreeWinSize = 33
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let NERDTreeIgnore = ['\.pyc$', '__pycache__$', '.git$', '.tox$', '\.egg-info$', '.DS_Store$', '.cache$', 'direnv', '.envrc', 'python-version']
let NERDTreeMinimalUI = 1
let NERDTreeShowHidden = 1

let mapleader = ','
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>h :split<CR>
nnoremap <leader>t o__import__("pdb").set_trace()<Esc>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

