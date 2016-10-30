" Plugins {{{
call plug#begin()

Plug 'sheerun/vim-polyglot'
Plug 'elmcast/elm-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive' "git wrapper
Plug 'bling/vim-airline'
Plug 'scrooloose/syntastic'
Plug 'joshdick/onedark.vim'

Plug 'isruslan/vim-es6'
Plug 'eslint/eslint'

Plug 'leafgarland/typescript-vim'
Plug 'palantir/tslint'

call plug#end()
" }}}


" SETTINGS
set nocompatible "tells vim not to pretend to be vi

set lazyredraw "redraw only when needed to
syntax enable "enable syntax processing
filetype indent on "load filetype-specific indent files
filetype plugin on

set incsearch "search as characters are entered
set hlsearch "highlight matches

" Editor Setting
set number "show abosolute line number
set relativenumber "show line numbers relative to current line
set showcmd "show command in bottom bar
set cursorline "highlight current line
set showmatch "highlight matching [()]

set tabstop=2 "number of visual spaces per TAB
set softtabstop=2 "number of spaces in tab when editing
set expandtab "tabs are spaces

" Search down into subfolders
  " Provides tab-completion for all file-related tasks
  set path+=**

  " Display all matching files when we tab complete
  set wildmenu

" Visual Settings
if has("win32") || has("win64")
  set gfn=Consolas:h12:cANSI:qDRAFT "Windows font styling
endif

  " Atom One Dark theme
  let g:onedark_termcolors=16
  colorscheme onedark

  " Airline Setting
  let g:airline_theme='onedark'
  let g:airline#extensions#tabline#enabled = 1 "enable vim-airline on start
  let g:airline#extensions#tabline#left_sep = '>'
  let g:airline#extensions#tabline#left_alt_sep = '|'

" NERDTree Settings
map <F2> :NERDTreeToggle<CR> "toggle NERDTree with F2 key

" Syntastic Settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

" Custom error symbols for Unix based OS
if has("unix")
  let g:syntastic_error_symbol = '❌'
  let g:syntastic_style_error_symbol = '⁉️'
  let g:syntastic_warning_symbol = '⚠️'
  let g:syntastic_style_warning_symbol = '💩'
endif

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Elm settings
let g:elm_format_autosave = 1 "format Elm file on save
