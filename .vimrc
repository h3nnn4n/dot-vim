execute pathogen#infect()

set term=xterm-256color
set t_Co=256
colorscheme wombat256i

syntax on
filetype plugin indent on

set number
set ruler

set tabstop=8                   "A tab is 8 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=4               "Insert 4 spaces when tab is pressed
set shiftwidth=4                "An indent is 4 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple
set smarttab

noremap  <Down> ""
noremap  <Left> ""
noremap  <Right> ""
noremap  <Up> ""
noremap! <Down> <Esc>
noremap! <Left> <Esc>
noremap! <Right> <Esc>
noremap! <Up> <Esc>

setlocal omnifunc=necoghc#omnifunc

" Uses C-n as shortcut for nerd tree
map <C-n> :NERDTreeToggle<CR>

" Uses C-a as shortcut for tasglist
map <C-a> :TlistToggle<CR>

" Closes nerdtree if it is the only window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" Changes <Leader> to from \ to . and the time out to 1.5 secs instead of 1sec
let mapleader=","
set timeout timeoutlen=1500

" rainbow parentheses
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
au VimEnter * RainbowParentheses
