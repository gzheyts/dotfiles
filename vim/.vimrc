" plugins setup {{{ 
" vim-plug configuration

" Download vim-plug if not already installed
if has('unix')
  if empty(glob('~/.vim/autoload/plug.vim'))
    silent ! curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
  endif
endif

call plug#begin()

"Color picker
Plug 'KabbAmine/vCoolor.vim'
Plug 'unblevable/quick-scope'   
Plug 'xolox/vim-misc'
Plug 'xolox/vim-session'
Plug 'MattesGroeger/vim-bookmarks'
Plug 'PotatoesMaster/i3-vim-syntax'
" Plug 'SirVer/ultisnips'
Plug 'vim-scripts/copypath.vim'
Plug 'vim-scripts/VisIncr'
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'christoomey/vim-tmux-navigator'
Plug 'elzr/vim-json'
Plug 'dense-analysis/ale'
Plug 'pedrohdz/vim-yaml-folds'
Plug 'haya14busa/incsearch-fuzzy.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'honza/vim-snippets'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kana/vim-textobj-user'
Plug 'kien/ctrlp.vim'
Plug 'lilydjwg/colorizer'
Plug 'majutsushi/tagbar'
Plug 'morhetz/gruvbox'
Plug 'rking/ag.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'sjl/gundo.vim'
Plug 'suan/vim-instant-markdown'
Plug 'vim-scripts/sudo.vim'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
" Wiki
Plug 'vimwiki/vimwiki'
Plug 'easymotion/vim-easymotion'

call plug#end()

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

" easy motion
map <Leader><Leader> <Plug>(easymotion-prefix)

" yaml config
augroup yaml
    autocmd!
    autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
    autocmd FileType yaml setlocal foldlevelstart=20
augroup end

" protect help files from colorizer (disables auto-scanning of colors)
let g:colorizer_startup = 0

" hides airline statusline, disables gitgutter on help
augroup help_optimizations
    autocmd!
    autocmd FileType help setlocal laststatus=0 nolist nospell
    autocmd FileType help GitGutterBufferDisable
augroup END

let g:ale_filetype_blacklist = ['help']
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'

set nocompatible
filetype plugin on
syntax on

set directory=~/tmp
set encoding=utf-8
set t_Co=256
" set term=rxvt-256color
set cursorline
set cursorcolumn
set autoindent
set mouse=a
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
set viminfo='100,<50,:100,@20,f1,h
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
let g:ctrlp_max_files = 5000
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
noremap ё `
noremap й q
noremap ц w
noremap у e
noremap к r
noremap е t
noremap н y
noremap г u
noremap ш i
noremap щ o
noremap з p
noremap х [
noremap ъ ]
noremap ф a
noremap ы s
noremap в d
noremap а f
noremap п g
noremap р h
noremap о j
noremap л k
noremap д l
noremap ж ;
noremap э '
noremap я z
noremap ч x
noremap с c
noremap м v
noremap и b
noremap т n
noremap ь m
noremap б ,
noremap ю .
noremap Ё ~
noremap Й Q
noremap Ц W
noremap У E
noremap К R
noremap Е T
noremap Н Y
noremap Г U
noremap Ш I
noremap Щ O
noremap З P
noremap Х {
noremap Ъ }
noremap Ф A
noremap Ы S
noremap В D
noremap А F
noremap П G
noremap Р H
noremap О J
noremap Л K
noremap Д L
noremap Ж :
noremap Э "
noremap Я Z
noremap Ч X
noremap С C
noremap М V
noremap И B
noremap Т N
noremap Ь M
noremap Б <
noremap Ю >
" }}}
" vim:ft=vim:fdm=marker
