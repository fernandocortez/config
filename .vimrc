" PLUGINS
call plug#begin()

Plug 'elmcast/elm-vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive' "git wrapper
Plug 'bling/vim-airline'
Plug 'scrooloose/syntastic'
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

set gfn=Consolas:h12:cANSI:qDRAFT "Windows font styling

" NERDTree Settings
map <F2> :NERDTreeToggle<CR>

"start NERDTree if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"close vim w/ NERDTree if no other windows are open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

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

"let g:syntastic_error_symbol = '❌'
"let g:syntastic_style_error_symbol = '⁉️'
"let g:syntastic_warning_symbol = '⚠️'
"let g:syntastic_style_warning_symbol = '💩'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn

" Elm settings
let g:elm_format_autosave = 1 "format Elm file on save
