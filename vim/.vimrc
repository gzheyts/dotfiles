" plugins setup {{{ 
" Vundle configuration
set nocompatible              " be iMproved, required

filetype off                 " required

" Download vim-plug if not already installed
if has('unix')
  if empty(glob('~/.vim/bundle/Vundle.vim'))
    silent ! git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim && vim +PluginInstall +qall
  endif
endif

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'lilydjwg/colorizer'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'VisIncr'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'guns/xterm-color-table.vim'
Plugin 'VundleVim/Vundle.vim'
Plugin 'bling/vim-airline'
Plugin 'taglist.vim'
Plugin 'elzr/vim-json'
Plugin 'docunext/closetag.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-eunuch'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'jistr/vim-nerdtree-tabs'

Plugin 'morhetz/gruvbox'
" Wiki 
Plugin 'vimwiki/vimwiki'
Plugin 'suan/vim-instant-markdown'

"Color picker 
Plugin 'KabbAmine/vCoolor.vim'

Plugin 'diepm/vim-rest-console'

Plugin 'derekwyatt/vim-scala'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'cosminadrianpopescu/vim-sql-workbench'
Plugin 'sudo.vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-abolish'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'Valloric/YouCompleteMe' 
"Plugin 'tpope/vim-classpath'
Plugin 'Shougo/vimproc.vim'
Plugin 'majutsushi/tagbar'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'thinca/vim-quickrun'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'dbext.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'wincent/Command-T'
Plugin 'kana/vim-textobj-user'
Plugin 'Shougo/unite-outline'
Plugin 'greplace.vim'
Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
Plugin 'LargeFile'
Plugin 'AnsiEsc.vim'

Plugin 'airblade/vim-gitgutter'
Plugin 'sjl/gundo.vim'

call vundle#end()            " required
filetype plugin indent on    " required

" }}}

" instant markdown plugin setup {{{
let g:instant_markdown_slow = 1
" use :InstantMarkdownPreivew to manually show preview
noremap <silent> <F5> :InstantMarkdownPreview<cr>
let g:instant_markdown_autostart = 0
" }}}

set grepprg=ack\ -k
let mapleader = ","
let maplocalleader = " "

set encoding=utf-8
set t_Co=256
set term=rxvt-256color
set cursorline
set autoindent
set mouse=a
syntax enable
set wildmenu
set wildmode=list:longest
set number
set numberwidth=4
set ruler
set showmode
set autowrite
set writebackup
set complete=.,w,b,u,t,i
set confirm
set hlsearch
set history=1000
set ignorecase
set smartcase
set incsearch
set laststatus=2
set showcmd
set showfulltag
set statusline=
set foldenable          
set foldlevel=0         
set foldlevelstart=-1   
set foldminlines=1      
set foldmethod=manual

set listchars=tab:▸\ ,eol:¬,space:.

set cmdwinheight=15

"setup bookmarks plugin
highlight BookmarkSign ctermbg=NONE ctermfg=160
let g:bookmark_sign = '♥'

"setup vimwiki plugin
let g:vimwiki_folding = 'list'
let g:vimwiki_list = [{},
          \ {'path': '/storage/files/notes', 'ext': '.notes'}]

silent! colorscheme  gruvbox

"Disabling old keys
inoremap <esc> <nop>

noremap <s-j> 5j
noremap <s-k> 5k

inoremap jk <esc>
inoremap ол <esc>

nnoremap <leader>ev :vsp $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

noremap <silent> <F4> 	:NERDTreeToggle<cr>
noremap <leader>nl 	:NERDTreeFind<cr>

"insert closing brackets automatically
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}

"taglist setup
let Tlist_Ctags_Cmd="/usr/bin/ctags"
let Tlist_WinWidth=50

nnoremap <silent> <C-F12> :TagbarToggle<CR>

"ctrlp setup  {{{

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
let g:ctrlp_max_depth 	=   40
let g:ctrlp_max_files 	= 100000
let g:ctrlp_max_history = 1000

" vCooler mappings
noremap <localleader>c  :VCoolor<CR>

" mappings
nnoremap <Leader>fl	:CtrlPLine<CR>
nnoremap <Leader>fb	:CtrlPBuffer<CR>
nnoremap <Leader>fm	:CtrlPMRU<CR>
nnoremap <Leader>fbt	:CtrlPBufTag<CR>
nnoremap <Leader>fbT	:CtrlPBufTagAll<CR>
nnoremap <Leader>ft	:CtrlPTag<CR>
nnoremap <Leader>fd 	:CtrlPDir<CR>
nnoremap <Leader>fq 	:CtrlPQuickfix<CR>

nnoremap <Leader>gq 	:copen 30<CR>
nnoremap <Leader>gs 	:shell <CR>

" }}}

" ctrlp window prefferences
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:50'

" Ultisnips setup {{{
"
let g:UltiSnipsExpandTrigger="<F8>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" }}}

nnoremap <Leader>w 	:update <CR>

" airlinea setup {{{

let g:airline_powerline_fonts 	=  1
let g:airline#extensions#tabline#enabled 	=  1
let g:airline#extensions#tabline#left_sep 	= ' '
let g:airline#extensions#tabline#left_alt_sep 	= '|'

" }}}

" rest console 
let g:vrc_auto_format_uhex = 1

if has('persistent_undo')
	set undofile
	set undodir=$HOME/.vim/undo
endif

if has('gui_running')
" vim:ft=vim:fdm=marker
	set go=*
endif 

autocmd filetype javascript nnoremap <buffer> <localleader>c I/<esc>

" vim:ft=vim:fdm=marker
