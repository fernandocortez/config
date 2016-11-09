" PLUGINS
call plug#begin()

Plug 'elmcast/elm-vim'

Plug 'sheerun/vim-polyglot' "support for many languages
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive' "git wrapper
Plug 'bling/vim-airline' "status/tabline for vim
Plug 'scrooloose/syntastic' "syntax checking
Plug 'joshdick/onedark.vim' "Atom's One Dark theme

Plug 'isruslan/vim-es6'
Plug 'mtscout6/syntastic-local-eslint.vim'

Plug 'leafgarland/typescript-vim'
Plug 'palantir/tslint'

call plug#end()


" SETTINGS
set nocompatible "tells vim not to pretend to be vi
let mapleader="," "mapping leader key to comma

syntax enable
filetype plugin on

set number "show abosolute line number
set relativenumber "show line numbers relative to current line

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
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
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
let g:syntastic_elm_checkers = ['elm_make'] "enable elm_make checker
let g:elm_format_autosave = 1 "format Elm file on save
let g:elm_syntastic_show_warnings = 1
