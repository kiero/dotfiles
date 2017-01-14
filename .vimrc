set nocompatible  " no compatible with vi
set backspace=2
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'bling/vim-airline'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-fugitive'

call vundle#end()            " required

let mapleader=',' " change the mapleader form \ to ,
map <Leader>n :NERDTreeToggle<CR>
filetype plugin indent on

set hidden        " hide buffer instead of closing it
set encoding=utf-8
set number        " show line numbers
set softtabstop=2     " tab is two spaces now
set expandtab     " insert space characters whenever the tab key is pressed
set shiftwidth=2  "
set smarttab
set showmatch     " set show matching brackets
set ignorecase    " ignore case when searching
set smartcase     " ignore case if search pattern is all lowercase,
                  " case-sensitive otherwise
set hlsearch      " highlight search terms
set incsearch     " show search matches as you type
set ruler         " show the cursor position all the time
set cursorline    " highlight the current cursor line
set history=100   " remember more commands and search history
set undolevels=200 " use many levels of undo
set wildignore=*.old,*.class
set title         " change the terminal's title
set autoindent

" don't let Vim write a backup file
set nobackup
set noswapfile

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

" No more toolbar in MacVim
if has("gui_running")
  set guioptions=egmrt
endif

" No more scrollbars in MacVim (even when using NERDTree)
:set guioptions-=L

" Snippets settings
:set omnifunc=csscomplete#CompleteCSS

" set sign of end of line
set listchars=tab:>-,eol:¬
" Function to reload snippets without relaunching Vim
" and also map to hotkey
function! ReloadSnippets( snippets_dir, ft )
    if strlen( a:ft ) == 0
        let filetype = "_"
    else
        let filetype = a:ft
    endif

    call ResetSnippets()
    call GetSnippets( a:snippets_dir, filetype )
endfunction

nmap ,rr :call ReloadSnippets(snippets_dir, &filetype)<CR>

" Source .vimrc automatically after editing
au! BufWritePost ~/.vimrc source %

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

" showing colours of hex values (plugin has to be installed)
if exists('*HexHighlight()')
  nmap <leader>z :call HexHighlight()<Return>
endif

" needed for pathogen
call pathogen#infect()

let g:airline_theme             = 'tomorrow'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
set laststatus=2

" Colorscheme and font
set gfn=Monaco:h12
" colorscheme rdark
syntax on         " turn on syntax highlighting

" Solarized theme set up
syntax enable
set background=dark
colorscheme solarized
