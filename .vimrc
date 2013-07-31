set nocompatible
filetype off " required by Vundle

" -----------------------------------------------
" Vim plugin management (by Vundle)
" -----------------------------------------------
set rtp+=~/.vim/bundle/vundle
call vundle#rc()

" Let Vundle manage Vundle (required)
Bundle 'gmarik/vundle'

" My bundles (refer to original GitHub repos)
Bundle 'sjbach/lusty'
Bundle 'tmhedberg/SimpylFold'
Bundle 'scrooloose/syntastic'
Bundle 'altercation/solarized'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-markdown'
Bundle 'goldfeld/vim-seek'
Bundle 'jmcantrell/vim-virtualenv'
Bundle 'vimwiki/vimwiki'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-scripts/scratch.vim'

" JS syntax
Bundle 'myhere/vim-nodejs-complete'

"execute pathogen#infect('~/.vim/bundle')
"execute pathogen#helptags()

filetype plugin indent on
let mapleader = ","
syntax on

colorscheme elflord

set wildmode=longest,list
set wildmenu

set ruler
set relativenumber
set showmode
set laststatus=2

" cf. Tim Pope's sensible.vim, as for many of these
set scrolloff=1

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

" Insert mode; PEP-8
set autoindent
set backspace=indent,eol,start
set softtabstop=4
set tabstop=8
set shiftwidth=4
" Should make textwidth only applicable in python files
" set textwidth=79
set colorcolumn=80

" Normal mode
nnoremap Y y$

" Split windows intuitively
set splitright
set splitbelow

" Tabs --> spaces
set expandtab

" -----------------------------------------------
" Plugin settings commands
" -----------------------------------------------

" youcompleteme
let g:ycm_filetype_blacklist = {
            \ 'vim': 1, 
            \ 'vimwiki': 1, 
            \ 'markdown': 1,
            \}

" -----------------------------------------------
" Remapping commands
" -----------------------------------------------

" Show non-printing characters
nnoremap <Leader>ll :set list<CR>
nnoremap <Leader>lh :set nolist<CR>

" Mouse interaction (none)
set mouse=

" Search
set ignorecase
set incsearch
set hlsearch
set gdefault
nnoremap <Leader>h :nohlsearch<CR>


" Vimwiki shortcuts
nnoremap <Leader>wu :VimwikiDiaryGenerateLinks<CR>


" List virtualenvs (vim-virtualenv plugin)
nnoremap <Leader>vl :VirtualEnvList<CR>
nnoremap <Leader>va :VirtualEnvActivate 
nnoremap <Leader>vd :VirtualEnvDeactivate<CR>


" ------------------------------------------------
"" Plugins
" ------------------------------------------------

" Help syntastic work with YCM
let g:syntastic_always_populate_loc_list = 1

" Split python documentation vertically
let g:pydoc_open_cmd = 'vsplit' 

" Easymotion
let g:EasyMotion_leader_key = '<Space>'

" Rainbow parentheses
" au VimEnter python RainbowParenthesesToggle
" au Syntax python RainbowParenthesesLoadRound
" au Syntax python RainbowParenthesesLoadSquare

" Vimwiki configuration
let main_wiki = {'syntax': 'markdown'}
let main_wiki.path = '~/Dropbox/wiki'
let main_wiki.ext = '.md'
let main_wiki.nested_syntaxes = {'python': 'python', 'R': 'R', 'java': 'java', 'awk': 'awk', 'sed': 'sed', 'js': 'javascript', 'sh': 'sh', 'tex': 'tex'}

let mcat_wiki = {'syntax': 'markdown'}
let mcat_wiki.path = '~/Dropbox/mcat_wiki'
let mcat_wiki.ext = '.md'
let mcat_wiki.nested_syntaxes = {'python': 'python', 'R': 'R', 'java': 'java', 'awk': 'awk', 'sed': 'sed', 'js': 'javascript', 'sh': 'sh', 'tex': 'tex'}

let amcas_wiki = {'syntax': 'markdown'}
let amcas_wiki.path = '~/Dropbox/amcas_wiki'
let amcas_wiki.ext = '.md'

let g:vimwiki_list = [main_wiki, amcas_wiki, mcat_wiki]

