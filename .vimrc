" PLUGINS
call plug#begin()

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


" SETTINGS
set nocompatible "tells vim not to pretend to be vi

syntax enable
filetype plugin on

set number "show abosolute line number
set relativenumber "show line numbers relative to current line

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Display all matching files when we tab complete
set wildmenu

if has("win32") || has("win64")
  set gfn=Consolas:h12:cANSI:qDRAFT "Windows font styling
endif

" Atom One Dark theme
let g:onedark_termcolors=16
colorscheme onedark

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
