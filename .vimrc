syntax on
set nu
set ai
set cursorline
set bg=dark
set tabstop=4
set shiftwidth=4
set mouse=a
set ruler
set incsearch

inoremap ( ()<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap [ []<Esc>i
inoremap {<CR> {<CR>}<Esc>ko
inoremap {{  {}<Esc>i

filetype indent on
