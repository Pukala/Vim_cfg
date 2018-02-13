set autochdir
set tags=tags;
"let g:ycm_global_ycm_extra_conf = '/var/fpwork/pukala/gnb2/gnb/uplane/L2-PS/.ycm_extra_conf.py'
#set tags+=/
"set tags+=/var/fpwork/pukala/gnb2/gnb/uplane/L2-PS/tags



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree.git'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'easymotion/vim-easymotion'
Plugin 'mileszs/ack.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'joonty/vim-do.git'
Plugin 'skywind3000/asyncrun.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'rdnetto/YCM-Generator'
Plugin 'gnattishness/cscope_maps'
Plugin 'flazz/vim-colorschemes'
set runtimepath^=~/.vim/bundle/ctrlp.vim


call vundle#end()            " required
filetype plugin indent on    " required

"set mouse=a
set backspace=indent,eol,start

" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
set t_Co=256

colo desert
syntax on
" turn line numbers on
colorscheme molokai
set number
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */
set hlsearch
"Ignore files 
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/L2-HI/*,*/L2-LO/*,*/cplane/*,*/build/*,*.py,*.pyc,*/hooks/*,*/itf/*,*/buildscript/*,*/common/*,*/externals/*,*/meta-gnb/*
set colorcolumn=100
highlight ColorColumn ctermbg=darkgray
set incsearch
set laststatus=2            " always show status line

"syntax enable
"set background=dark
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 'c'

"set tags+=/var/fpwork/pukala/gnb/uplane/tags
set tags+=/var/fpwork/pukala/gnb/uplane/tags
set tags+=/var/fpwork/pukala/gnb2/gnb/uplane/tags

nmap <F8> :TagbarToggle<CR>
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

"C-Left and C-Right cycle tabs forward and backward
map <C-a> gT
map <C-d> gt
silent! map vsplit
silent! map set mouse=
silent! map <F2> :NERDTreeFind<CR>
silent! map <F1> :AsyncRun 

"find word
silent! map <F5> :AsyncRun /home/pukala/bin/findAlone 
"find with part of word
silent! map <c-F> :AsyncRun /home/pukala/bin/findOfPart 


"auto open quickfix when asynccomand is started
autocmd User AsyncRunStart call asyncrun#quickfix_toggle(8, 1)

"YCM cfg
let g:ycm_filetype_blacklist = {
      \ 'L2-HI' : 1,
      \ 'L2-LO' : 1,
      \ 'cplane' : 1,
      \ 'hooks' : 1,
      \ 'buildscript' : 1,
      \ 'externals' : 1,
      \ 'meta-gnb' : 1,
      \ 'build' : 1
\}

let g:ycm_key_invoke_completion = '<C-Space>'


set background=dark

