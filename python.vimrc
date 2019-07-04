set nocompatible " required - tells vim not to pretend to be vi
filetype off     " required
set encoding=utf-8

set lazyredraw " redraw only when needed to


" VUNDLE
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'python/black'
autocmd BufWritePre *.py execute ':Black'

Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Bundle 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Editor Setting
set number " show abosolute line number
set relativenumber " show line numbers relative to current line
set showcmd " show command in bottom bar
set cursorline " highlight current line
set showmatch " highlight matching [()]

set tabstop=2 " number of visual spaces per TAB
set softtabstop=2 " number of spaces in tab when editing
set expandtab " tabs are spaces

" flag trailing whitespace
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" python PEP 8 indentation
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

" python auto-complete
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

let python_highlight_all=1
syntax on

" Search down into subfolders
set incsearch " search as characters are entered
set hlsearch " highlight matches

  " Provides tab-completion for all file-related tasks
  set path+=**

  " Display all matching files when we tab complete
  set wildmenu

" Visual Settings
if has("win32") || has("win64")
  set gfn=Consolas:h12:cANSI:qDRAFT " Windows font styling
endif
