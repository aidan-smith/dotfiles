" Ensure vim will run in modern vim mode, not backwards-compatible vi mode
set nocompatible
set backspace=eol,start,indent
set history=500
set hidden

" Map leader to Space
nnoremap <Space> <Nop>
let mapleader = " "

" Enable the mouse in vim
set mouse=a
""""" PLUGINS """""

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
" autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"   \| PlugInstall --sync | source $MYVIMRC
" \| endif

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" Better statusbar
Plug 'itchyny/lightline.vim'

" Better commenting
Plug 'tpope/vim-commentary'

" Text object for surroundng characters
Plug 'tpope/vim-surround'

" Git integration
Plug 'tpope/vim-fugitive'

" Visual filesystem
Plug 'preservim/nerdtree'

" Colors
Plug 'chrisbra/Colorizer'

" Initialize plugin system
call plug#end()

""""" VIM UI """""

" Set vim to have relative numbering in normal mode and absolute numbering in insert mode
set ruler
set number relativenumber

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" Turn on statusline
set laststatus=2
set noshowmode

" Fix vim time delay
set ttimeoutlen=10

" Turn on the Wild menu
set wildmenu

" Ignore certian files in Wild
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros
set lazyredraw

" Show matching brackets when cursor is over them
set showmatch

" Change opening behavior for splits
set splitbelow splitright

""""" COLORS """""

" Enable syntax highlighting
syntax enable

" 256 color palette
set t_co=256

" Set utf-8 as standard encoding
set encoding=utf-8

" Show commands while being typed
set showcmd

" Auto-coloring
let g:colorizer_auto_filetype='css,html,yaml,conf'

""""" TEXT """""

" Use spaces instead of tabs
set expandtab

" Be smart about tabs
 set smarttab

" 4 space tabs and shifts
set tabstop=4
set shiftwidth=4

set autoindent "Auto indent
filetype plugin indent on
" set smartindent "Smart indent
set wrap "Wrap text

""""" COMPLING """""

" Strip whitespace on file write
augroup stripwhitespace
    autocmd!
    autocmd BufWritePre * :%s/\s\+$//e
augroup END

""""" KEYBINDS """""

noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

" Better bindings for navigating splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
