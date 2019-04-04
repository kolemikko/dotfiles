" vimrc optimized for Python 31.03.2019
"
" configure Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'flazz/vim-colorschemes'

Plugin 'vim-airline/vim-airline'
Plugin 'ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'ervandew/supertab'
Plugin 'w0rp/ale'

"Plugin 'scrooloose/nerdtree'

"Plugin 'Valloric/YouCompleteMe'

"Plugin 'bronson/vim-trailing-whitespace'

call vundle#end()

" initial settings

set encoding=utf-8
set nocompatible
syntax enable
colorscheme badwolf
set timeoutlen=1000 ttimeoutlen=0
set autoread

set tabstop=4 " space per TAB
set softtabstop=2 " spaces in TAB when editing
set shiftwidth=4
set shiftround
set expandtab " tabs are spaces

filetype indent on
filetype on
filetype plugin on

set number " show line numbers
set tw=79 " line marker
set ruler " show where you are
"set showcmd " shot command in bottom bar
set cursorline " highlight current line

set wildmenu " visual autocomplete for command menu

set mouse=a " enable basic mouse behavior
set bs=2 " normal backspace
set clipboard=unnamed "y and p with system clipboard
set history=700
set undolevels=700

" Searching
set hlsearch
set ignorecase
set incsearch
set smartcase

" backup and swap settings
set nobackup
set nowritebackup
set noswapfile

" Folding
" set foldenable
" set foldlevelstart=10
" set foldnestmax=10
" set foldmethod=indent

" better indentation
vnoremap < <gv
vnoremap > >gv

" Movement
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" enforce purity
noremap  <Up> <Nop>
noremap  <Down> <Nop>
noremap  <Left> <Nop>
noremap  <Right> <Nop>

" switch between tabs
map <Leader>, <esc>:tabprevious<CR>
map <Leader>. <esc>:tabnext<CR>

let mapleader=","

" Leader shortcuts
vnoremap <Leader>s :sort n<CR>
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <leader>a :Ag
nnoremap <leader>c :CtrlP<CR>
nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <leader>T :CtrlPClearCache<CR>:CtrlP<CR>
nnoremap <leader>l :ALEFix<CR>
"map <Leader>v :source ~/.vimrc

"nnoremap <leader>d :NERDTreeToggle<CR>
"nnoremap <leader>f :NERDTreeFind<CR>

" plugin settings
let g:ctrlp_match_window = 'order:ttb,max:20'

let g:ale_set_quickfix = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_changed = 'never'
let g:ale_linters = {'python': ['pylint'],}
let g:airline#extensions#ale#enabled = 1

let g:ale_lint_on_insert_leave = 1
let g:ale_set_highlights = 1

"let g:NERDSpaceDelims=1

" Quickfix settings
noremap <leader>q :call QuickfixToggle()<cr>

let g:quickfix_is_open = 0
function! QuickfixToggle()
    if g:quickfix_is_open
        cclose
        let g:quickfix_is_open = 0
    else
        copen
        let g:quickfix_is_open = 1
    endif
endfunction
noremap <C-k> :cp<CR>


" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

 " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
