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

Plugin '1995parham/vim-zimpl'
Plugin 'AnsiEsc.vim'
"Color picker
Plugin 'KabbAmine/vCoolor.vim'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'PotatoesMaster/i3-vim-syntax'
Plugin 'Shougo/unite-outline'
Plugin 'Shougo/vimproc.vim'
Plugin 'Shougo/vimshell.vim'
Plugin 'SirVer/ultisnips'
Plugin 'VisIncr'
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'dbext.vim'
Plugin 'derekwyatt/vim-scala'
Plugin 'diepm/vim-rest-console'
Plugin 'docunext/closetag.vim'
Plugin 'elzr/vim-json'
Plugin 'godlygeek/tabular'
Plugin 'guns/xterm-color-table.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'honza/vim-snippets'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kabbamine/zeavim.vim'
Plugin 'kana/vim-textobj-user'
Plugin 'kien/ctrlp.vim'
Plugin 'lervag/vimtex'
Plugin 'lilydjwg/colorizer'
Plugin 'majutsushi/tagbar'
Plugin 'morhetz/gruvbox'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'sjl/gundo.vim'
Plugin 'suan/vim-instant-markdown'
Plugin 'sudo.vim'
Plugin 'thinca/vim-quickrun'
Plugin 'tomtom/tcomment_vim'
Plugin 'tpope/vim-abolish'
Plugin 'tpope/vim-eunuch'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-unimpaired'
" Wiki
Plugin 'vimwiki/vimwiki'

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

set tags+=/tmp/jdk8-sources/java.util.tags,/tmp/jdk8-sources/java.lang.tags,/tmp/jdk8-sources/java.math.tags,/tmp/jdk8-sources/java.io.tags

let mapleader = ","
let maplocalleader = " "

set encoding=utf-8
set t_Co=256
set term=rxvt-256color
set cursorline
set cursorcolumn
set autoindent
set mouse=a
syntax enable
set wildmenu
set wildmode=list:full
set number
set relativenumber
set numberwidth=4
set ruler
set autowrite
set ignorecase
set smartcase
set incsearch
set laststatus=2
set showfulltag
set foldmethod=indent
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set showbreak=↪

" setup bookmarks plugin
highlight BookmarkSign ctermbg=NONE ctermfg=160
let g:bookmark_sign = '♥'

" setup vimwiki plugin
let g:vimwiki_folding = 'list'
let g:vimwiki_list = [{},
          \ {'path': '/storage/files/notes', 'ext': '.notes'}]

silent! colorscheme  gruvbox

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

noremap <leader>M 	:w \| make<cr><cr>
noremap <leader>R 	:exe "! java %< -cp $PWD"<cr>

noremap <silent> <F8> :TagbarToggle<CR>

" {{{  window mapings
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <leader>h :TmuxNavigateLeft<cr>
nnoremap <silent> <leader>j :TmuxNavigateDown<cr>
nnoremap <silent> <leader>k :TmuxNavigateUp<cr>
nnoremap <silent> <leader>l :TmuxNavigateRight<cr>
nnoremap <silent> <leader>p :TmuxNavigatePrevious<cr>
" }}}

" ctrlp setup  {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_extensions = ['tag', 'buffertag', 'quickfix', 'dir', 'rtscript',
                          \ 'undo', 'line', 'changes', 'mixed', 'bookmarkdir']
" window prefferences
let g:ctrlp_match_window = 'bottom,order:btt,min:1,max:20,results:50'
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

" Ultisnips setup {{{

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
inoremap <C-\> <C-R>=UltiSnips#ListSnippets()<cr>

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
	set go=*
endif 

" russian mappings {{{
map ё `
map й q
map ц w
map у e
map к r
map е t
map н y
map г u
map ш i
map щ o
map з p
map х [
map ъ ]
map ф a
map ы s
map в d
map а f
map п g
map р h
map о j
map л k
map д l
map ж ;
map э '
map я z
map ч x
map с c
map м v
map и b
map т n
map ь m
map б ,
map ю .
map Ё ~
map Й Q
map Ц W
map У E
map К R
map Е T
map Н Y
map Г U
map Ш I
map Щ O
map З P
map Х {
map Ъ }
map Ф A
map Ы S
map В D
map А F
map П G
map Р H
map О J
map Л K
map Д L
map Ж :
map Э "
map Я Z
map Ч X
map С C
map М V
map И B
map Т N
map Ь M
map Б <
map Ю >
" }}}
" vim:ft=vim:fdm=marker
