set nocompatible

let mapleader = ","

execute pathogen#infect('~/.vim/bundle')
execute pathogen#helptags()

filetype plugin indent on

set wildmode=longest,list
set wildmenu

set ruler
set relativenumber
set showmode
set laststatus=2

" cf. Tim Pope's sensible.vim, as for many of these
set scrolloff=1
" set sidescrolloff=5 

set encoding=utf-8

set autoread
set autowriteall

set history=1000

" Backups and saves
set viminfo='1000,f1,<500
set directory=~/.vim/swap//,.
set backupdir=~/.vim/backup//,.
set undodir=~/.vim/undo//,.

" Editing niceties
nnoremap rr :redraw!<CR>

" Enable hidden buffers
set hidden

" Insert mode
set autoindent
set backspace=indent,eol,start
set tabstop=4
set shiftwidth=4

" Normal mode
nnoremap Y y$

" Split windows intuitively
set splitright
set splitbelow

" Tabs --> spaces
set expandtab

" Show non-printing characters
nnoremap <Leader>ll :set list<CR>
nnoremap <Leader>lh :set nolist<CR>

" Mouse interaction
set mouse=iv

" Search
set ignorecase
set incsearch
set hlsearch
set gdefault
nnoremap <Leader>h :nohlsearch<CR>

" ------------------------------------------------
"" Plugins
" ------------------------------------------------

" Easymotion
let g:EasyMotion_leader_key = '<Space>'

" Vimwiki configuration
let main_wiki = {'syntax': 'markdown'}
let main_wiki.path = '~/Dropbox/wiki'
let main_wiki.ext = '.md'
let main_wiki.nested_syntaxes = {'python': 'python', 'R': 'R', 'java': 'java', 'awk': 'awk', 'sed': 'sed', 'js': 'javascript', 'sh': 'sh'}

let mcat_wiki = {'syntax': 'markdown'}
let mcat_wiki.path = '~/Dropbox/mcat_wiki'
let mcat_wiki.ext = '.md'
let mcat_wiki.nested_syntaxes = {'python': 'python', 'R': 'R', 'java': 'java', 'awk': 'awk', 'sed': 'sed', 'js': 'javascript', 'sh': 'sh'}

let g:vimwiki_list = [main_wiki, mcat_wiki]

