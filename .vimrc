set nocompatible
filetype plugin indent on
set t_Co=256
set shiftwidth=4
set autoindent
"colorscheme wombat256
colorscheme manxome
set mouse=a
syntax enable
set wildmenu
set wildmode=list,full
set number
set numberwidth=4
set ruler
set showmode
set autoread<
set autowrite
set writebackup
set complete=.,w,b,u,t,i
set confirm
set hlsearch
set history=100
set ignorecase
set smartcase
set incsearch
set laststatus=2
set showcmd
set showfulltag
set statusline=
set foldenable          " set to display all folds open
set foldlevel=0         " Min folding level
set foldlevelstart=-1   " value for 'foldlevel' when starting to edit a file
set foldminlines=1      " minimum number of screen lines for a fold to be closed
set foldmethod=manual

"NERDTree plugin
nmap <silent> <F4> :NERDTreeToggle<CR>
"JavaBrowser
nmap <silent> <F3> :JavaBrowser<CR>
"Folding
inoremap <C-j> <C-O>za
nnoremap <C-j> za
onoremap <C-j> <C-C>za
vnoremap <C-j> zf
"insert closing brackets automatically
" inoremap {      {}<Left>
" inoremap {<CR>  {<CR>}<Esc>O
" inoremap {{     {
" inoremap {}     {}


" javacomplete plugin settings
if has("autocmd")
	autocmd Filetype java setlocal omnifunc=javacomplete#Complete
	autocmd Filetype java setlocal completefunc=javacomplete#CompleteParamsInfo
	au 	filetype html set      shiftwidth=2
endif

if has("gui_running")
    set guifont=Ubuntu\ Mono\ 15
    colorscheme wombat256
    set go=
endif

"taglist plugin configuration
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_WinWidth=50

nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <F9> :TagbarToggle<CR>
nnoremap <silent> <F10> :BufExplorer<CR>
nnoremap <silent> <F2> :FufFile<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlPLastMode'
let g:ctrlp_extensions = ['buffertag', 'tag', 'line', 'dir']





"set fdm=syntax fen
"augroup closeCommentFolds
"    au!
"    au FileType javascript %foldo | g/^\/\*/foldc
"    au FileType ruby %foldo | g/^=begin/foldc
"augroup end

call pathogen#infect()

