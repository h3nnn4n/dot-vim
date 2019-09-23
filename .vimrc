execute pathogen#infect()

set t_Co=256
colorscheme wombat256mod
set background=dark

" Changes <Leader> to from \ to . and the time out to 1.5 secs instead of 1sec
let mapleader=","
set timeout timeoutlen=1500

if has("gui_running")
  set ai
endif

au BufRead,BufNewFile *.ks set filetype=kos

if !has('nvim')
  set mouse=a
  set term=xterm-256color
endif

filetype plugin indent on

set number
set ruler
set nowrap
set nocompatible      " We're running Vim, not Vi!
set tabstop=2                   "A tab is 2 spaces
set expandtab                   "Always uses spaces instead of tabs
set softtabstop=2               "Insert 2 spaces when tab is pressed
set shiftwidth=2                "An indent is 2 spaces
set shiftround                  "Round indent to nearest shiftwidth multiple
set scrolloff=2       " Show 2 lines of context around the cursor.
set sidescrolloff=3   " Show 3 columns of context around the cursor.
set novisualbell        " No beeping.
set noerrorbells      " don't beep

set cursorline
set cursorcolumn

""
"" List chars
""
set list
set listchars=""                  " Reset the listchars
set listchars+=tab:▸\             " a tab should display as "▸"
set listchars+=trail:.            " show trailing spaces as dots
set listchars+=space:·            " show leading space as "·"
set listchars+=eol:¬              " show end of line as "¬"
set listchars+=extends:>          " The character to show in the last column when wrap is off and the line goes beyond the right of the screen
set listchars+=precedes:<         " The character to show in the last column when wrap is off and the line goes beyond the left of the screen

set wildmenu

""
""
"" Extensions and stuff
""
""

" FZF STUFF
set rtp+=/usr/local/opt/fzf

nmap <Leader>f :GFiles<CR>
nmap <Leader>F :Files<CR>
nmap <Leader>l :BLines<CR>
nmap <Leader>L :Lines<CR>

nmap <Leader>/ :Rg<Space>
" END OF FZF STUFF

"vim-easymotion
let g:EasyMotion_smartcase = 1
map <leader><leader>c <plug>(easymotion-s2)

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" No more :W bullshit
cnoreabbrev <expr> W ((getcmdtype() is# ':' && getcmdline() is# 'W')?('w'):('W'))

" stop using arrow keys!
inoremap  <Up>     <NOP>
inoremap  <Down>   <NOP>
inoremap  <Left>   <NOP>
inoremap  <Right>  <NOP>
noremap   <Up>     <NOP>
noremap   <Down>   <NOP>
noremap   <Left>   <NOP>
noremap   <Right>  <NOP>

" pep8
" let g:PyFlakeOnWrite = 1
" let g:PyFlakeForcePyVersion = 3
" let g:PyFlakeDisabledMessages = 'E116'
" let g:PyFlakeCheckers = 'pep8'
let g:flake8_show_quickfix=0  " don't show
autocmd BufWritePost *.py call Flake8()

autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1

" Rust magic

set hidden
let g:ycm_rust_src_path="/Users/renanssilva/Developer/rust-master/src/"
let g:racer_cmd = "/Users/renanssilva/.cargo/bin/racer"
let g:racer_experimental_completer = 1
let g:rustfmt_autosave = 1

au FileType rust nmap gd <Plug>(rust-def)
au FileType rust nmap gs <Plug>(rust-def-split)
au FileType rust nmap gx <Plug>(rust-def-vertical)
au FileType rust nmap <leader>gd <Plug>(rust-doc)

" Syntastic
map <Leader>s :SyntasticToggleMode<CR>

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_quiet_messages={'level':'warnings'}
"let g:syntastic_python_flake8_exec = 'python3.5'

" airline
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
"let g:airline_powerline_fonts = 1

" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<leader>q"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsListSnippets="<c-tab>"

" Uses C-n as shortcut for nerd tree
map <C-n> :NERDTreeToggle<CR>

" Closes nerdtree if it is the only window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" rainbow parentheses
let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
au VimEnter * RainbowParentheses

" Vim-indent
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size  = 1

nmap <Leader>a; :Tabularize /::<CR>
vmap <Leader>a; :Tabularize /::<CR>

nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>

nmap <Leader>a+ :Tabularize /+<CR>
vmap <Leader>a+ :Tabularize /+<CR>

nmap <Leader>a- :Tabularize /-<CR>
vmap <Leader>a- :Tabularize /-<CR>

nmap <Leader>a* :Tabularize /*<CR>
vmap <Leader>a* :Tabularize /*<CR>

nmap <Leader>a/ :Tabularize //<CR>
vmap <Leader>a/ :Tabularize //<CR>

nmap <Leader>av :Tabularize /\S\+;<CR>
vmap <Leader>av :Tabularize /\S\+;<CR>

"nmap <Leader>a[ :Tabularize /[<CR>
"vmap <Leader>a[ :Tabularize /[<CR>

"nmap <Leader>a{ :Tabularize /{<CR>
"vmap <Leader>a{ :Tabularize /{<CR>

"nmap <Leader>a( :Tabularize /(<CR>
"vmap <Leader>a( :Tabularize /(<CR>

"nmap <Leader>a| :Tabularize /|<CR>
"vmap <Leader>a| :Tabularize /|<CR>

"set spell spelllang=pt,en

highlight clear SpellBad
highlight SpellBad term=reverse cterm=underline

" VimEasy motion themes

"hi link EasyMotionIncCursor ErrorMsg
"hi link EasyMotionIncSearch ErrorMsg
"hi link EasyMotionShade  Comment
"hi link EasyMotionTarget ErrorMsg
"hi link EasyMotionTarget2First MatchParen
"hi link EasyMotionTarget2Second MatchParen
"
"hi link EasyMotionIncSearch Search
hi link EasyMotionMoveHL ErrorMsg

