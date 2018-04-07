" SETTINGS
set nocompatible "tells vim not to pretend to be vi

set lazyredraw "redraw only when needed to

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
set incsearch "search as characters are entered
set hlsearch "highlight matches

  " Provides tab-completion for all file-related tasks
  set path+=**

  " Display all matching files when we tab complete
  set wildmenu

" Visual Settings
if has("win32") || has("win64")
  set gfn=Consolas:h12:cANSI:qDRAFT "Windows font styling
endif
