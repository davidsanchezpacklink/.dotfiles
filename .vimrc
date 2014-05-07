set mouse=a

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>
nmap <F8> :TagbarToggle<CR>

nnoremap <up> :wincmd k<cr>
nnoremap <left> :wincmd h<cr>
nnoremap <right> :wincmd l<cr>
nnoremap <down> :wincmd j<cr>

nnoremap <C-F> :wincmd h<cr>
nnoremap <C-G> :wincmd l<cr>

let mapleader = ","
let g:neocomplcache_enable_at_startup = 1


execute pathogen#infect()
filetype plugin indent on
filetype plugin on
syntax enable

if has('gui_running')
        set background=light
else
        set background=dark
endif

colorscheme solarized


set number
set clipboard+=unnamed
set expandtab
set tabstop=4

" Nerdtree -----------------------------------------------------------------
"{{{
map <tab> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.pyc$']
let NERDTreeMapActivateNode='<space>'
let NERDTreeShowBookmarks=1
"}}}
"
" BASICS ------------------------------------------------------------------
nnoremap H 0
nnoremap L $
nnoremap <C-V> :YRShow<cr>
nnoremap <C-C> :TComment<cr>
nnoremap <C-X> :TCommentBlock<cr>
nnoremap e :Errors<cr>
nnoremap q zt
nnoremap <c-a> ggVG
nnoremap <c-cr> :tjump<CR>

" BUFFERGATOR -------------------------------------------------------------

" backup to ~/.tmp
set backup
set backupdir=~/.vim/backup,~/.backup,~/backup,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim/backup,~/.backup,~/backup,/var/tmp,/tmp
set writebackup


vnoremap <c-c> "+y
vnoremap < <gv
vnoremap > >gv

if executable('ag')
        " Use ag over grep
        set grepprg=ag\ --nogroup\ --nocolor
endif
" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap K :grep! "\b<C-R><C-W>\b"<CR>:cw<CR>
nnoremap \ :Ag<SPACE>
let g:ackprg = 'ag --nogroup --nocolor --column'
