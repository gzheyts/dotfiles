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

"Color picker
Plugin 'KabbAmine/vCoolor.vim'
Plugin 'unblevable/quick-scope'   
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-session'
Plugin 'MattesGroeger/vim-bookmarks'
Plugin 'PotatoesMaster/i3-vim-syntax'
" Plugin 'SirVer/ultisnips'
Plugin 'copypath.vim'
Plugin 'VisIncr'
Plugin 'VundleVim/Vundle.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-airline'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'elzr/vim-json'
Plugin 'dense-analysis/ale'
Plugin 'pedrohdz/vim-yaml-folds'
Plugin 'haya14busa/incsearch-fuzzy.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'honza/vim-snippets'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kana/vim-textobj-user'
Plugin 'kien/ctrlp.vim'
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


" Quick Scopes
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

" Trigger a highlight only when pressing f and F.
let g:qs_highlight_on_keys = ['f', 'F']

let mapleader = ","
let maplocalleader = " "


" yaml config
autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
autocmd FileType yaml set foldlevelstart=20

let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

set directory=~/tmp
set encoding=utf-8
set t_Co=256
" set term=rxvt-256color
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
set foldmethod=syntax
set listchars=tab:→\ ,eol:¬,trail:⋅,extends:❯,precedes:❮
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab
set showbreak=↪
set scrolljump=5
set hidden
set viminfo='0,:0,<0,@0,f0
set synmaxcol=120
set colorcolumn=120
highlight OverLength ctermfg=white ctermbg=darkred guibg=#FFD9D9
match OverLength /\%81v.\+/

" setup bookmarks plugin
highlight BookmarkSign ctermbg=NONE ctermfg=160
let g:bookmark_sign = '♥'

" setup vimwiki plugin
let g:vimwiki_folding = 'list'
let g:vimwiki_list = [{}, {'path': '~/Yandex.Disk/notes', 'ext': '.notes'}]

silent! colorscheme  gruvbox


nnoremap <leader>ev :vsp $MYVIMRC<cr>
nnoremap <leader>sv :so $MYVIMRC<cr>

"Invisible character colors 
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59

noremap <silent> <F4> 	:NERDTreeToggle<cr>
noremap <leader>nl 	:NERDTreeFind<cr>

noremap <leader>M 	:w \| make<cr><cr>

noremap <silent> <F8> :TagbarToggle<CR>

" {{{  window mapings
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <leader>h :TmuxNavigateLeft<cr>
nnoremap <silent> <leader>j :TmuxNavigateDown<cr>
nnoremap <silent> <leader>k :TmuxNavigateUp<cr>
nnoremap <silent> <leader>l :TmuxNavigateRight<cr>
nnoremap <silent> <leader>\ :TmuxNavigatePrevious<cr>
" }}}

" ctrlp setup  {{{
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_show_hidden = 1
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

" System clipboard copy/paste {{{
noremap 		<leader>y "+y
noremap 		<leader>Y "+Y
noremap 		<leader>p "+p
noremap 		<leader>P "+P
"}}}

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

" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<tab>"
" let g:UltiSnipsJumpBackwardTrigger="<s-tab>"
" inoremap <C-\> <C-R>=UltiSnips#ListSnippets()<cr>
"
" let g:UltiSnipsEditSplit="vertical"
" }}}

nnoremap <Leader>w 	:update <CR>

" airlinea setup {{{

 let g:airline_powerline_fonts 	=  1
 let g:airline#extensions#tabline#enabled 	=  1
 let g:airline#extensions#tabline#left_sep 	= ' '
 let g:airline#extensions#tabline#left_alt_sep 	= '|'

"  }}}

" rest console 
let g:vrc_auto_format_uhex = 1

" session management
let g:session_autosave = 'yes'
let g:session_autoload = 'no'

if has('persistent_undo')
	set undofile
	set undodir=$HOME/.vim/undo
endif

if has('gui_running')
	set go=*
        set background=dark
endif 

set background=dark

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
