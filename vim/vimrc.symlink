" no compatible with vi
set nocompatible

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" VUNDLE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" required for Vundle
filetype off

" Vundle, the plug-in manager for Vim
" run :PluginInstall in vim to install plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" A code-completion engine
Plugin 'Valloric/YouCompleteMe'
" lean and mean status/tabline
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Vim/Ruby Configuration Files
Plugin 'vim-ruby/vim-ruby'
" Ruby on Rails power tools
Plugin 'tpope/vim-rails'
" a Git wrapper
Plugin 'tpope/vim-fugitive'

" Solarized Colorscheme for Vim
Plugin 'altercation/vim-colors-solarized'

call vundle#end()
" End of Vundle stuff

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIG
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on

" make backspace work like most other apps
set backspace=2
" set backspace=indent,eol,start
" hide buffer instead of closing it
set hidden
" set encoding to utf-8
set encoding=utf-8
" show line numbers
set number
" tab is two spaces now
set softtabstop=2
" insert space characters whenever the tab key is pressed
set expandtab
set shiftwidth=2
set smarttab
" set show matching brackets
set showmatch
" ignore case when searching
set ignorecase
" ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase
" highlight search terms
set hlsearch
" show search matches as you type
set incsearch
" show the cursor position all the time
set ruler
" highlight the current cursor line
set cursorline
" remember more commands and search history
set history=100
" use many levels of undo
set undolevels=200
set wildignore=*.old,*.class
" change the terminal's title
set title
set autoindent

" change annoying delay of escape key to 10ms
set timeoutlen=1000 ttimeoutlen=10

" don't let Vim write a backup file
set nobackup
set noswapfile

" display status line always
set laststatus=2

" Force the cursor onto a new line after 80 characters
set textwidth=80
" However, in Git commit messages, let’s make it 72 characters
autocmd FileType gitcommit set textwidth=72
" Colour the 81st (or 73rd) column so that we don’t type over our limit
set colorcolumn=+1

" No more toolbar in MacVim
if has("gui_running")
  set guioptions=egmrt
endif

" No more scrollbars in MacVim (even when using NERDTree)
set guioptions-=L

" set sign of end of line
set listchars=tab:>-,eol:¬

" change the mapleader form \ to ,
let mapleader=','

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MISC KEY MAPS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" temporarily switching to paste mode by pressing F2
set pastetoggle=<F5>

" write command with using ; as well as :
nnoremap ; :

" map highlighting the current line
nnoremap <Leader>c :set cursorline!<CR>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" turn off search highlight wih ,/
nmap <silent> ,/ :nohlsearch<CR>

" Map <F2> to toggle the NERDTree
map <F2> :NERDTreeToggle<CR>

" Tab switching with <F3> & <F4>
map <F3> :tabp<CR>
map <F4> :tabn<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OTHER STUFF
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Source .vimrc automatically after editing
au! BufWritePost ~/.vimrc source %

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLOR
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:airline_theme='solarized'
let g:airline_powerline_fonts=1
let g:airline_left_sep=''
let g:airline_right_sep=''

" set font
set gfn=Monaco:h12
" turn on syntax highlighting
syntax on
syntax enable
" solarized theme set up
colorscheme solarized
set background=dark
