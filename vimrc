"Alexander Schwager: Basic stuff for ~/.vimrc
"THIS AND THAT
set nocompatible "Use Vim settings, rather than Vi settings (much better!).  

"" VUNDLE STUFF #####################################
filetype plugin indent off
syntax off
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'sjl/gundo.vim'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'wincent/command-t'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ConradIrwin/vim-bracketed-paste'
Plugin 'davidhalter/jedi-vim'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"" END VUNDLE STUFF #####################################

" Plugin Customizations
set laststatus=2 "for airline
set ttimeoutlen=50 "for airline

let g:gundo_prefer_python3 = 1 "for gundo
let g:airline_powerline_fonts = 1 "for airline
let g:jedi#force_py_version = 3
let g:syntastic_python_python_exec = 'python3'


" Editor behaviour
set history=100 "command line history
set visualbell "don't annoy me with beeps...
set showcmd "display incomplete commands
set shell=bash " https://github.com/VundleVim/Vundle.vim/wiki#faq4
" allow backspacing over everything in insert mode
set backspace=indent,eol,start
set scrolloff=3
set wrap
set splitright

"READABILITY & NAVIGATION & EDITING
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
set ruler "show the cursor position all the time
" get vim-airline instead of powerline (it's cooler)


"TODO file detection
"syntax highlighting
syntax on

"color scheme
colorscheme ubaryd
"
"
"line numbers
set relativenumber
set number
set list " display invisible characters
set listchars=tab:▸\ ,eol:☉ " use CTRL+V followed by e.g. u1234 
"
"editing line marker
set cursorline "mark line with cursor
"set cursorcolumn


"searching
set hlsearch "highlight search results
set incsearch "incremental
set ignorecase "case insensitive search
set smartcase "capital letter turns search case sensitive


"syntax highlighting


"python stuff


"filemanagement
set wildmenu
set wildmode=list:full
"TODO: file detection
set undofile


"mappings
"TODO map ':' to '##' in normalmode
"map leader to '<'
map Y y$
"
" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif
