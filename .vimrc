" Enable file syntax highlight:
filetype plugin indent on
syntax enable
set t_Co=256

" Choose colorscheme:
" colorscheme elflord
" set background=dark

" Config UI:
set laststatus=0
set lazyredraw
set linebreak
set nonumber
set norelativenumber
set showcmd
set showmatch
set wildmenu
set wrap
set nocursorline

" Config indent:
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set tabstop=2
let g:html_indent_style1 = "inc"
let g:html_indent_script1 = "inc"

" Config search:
set ignorecase
set incsearch
set nohlsearch
set smartcase

" Config backup:
" set backupdir=~/.vim/backups
" set undodir=~/.vim/backups
" set directory=~/.vim/backups
" set backup
" set writebackup

" Config netrw:
let g:netrw_banner=0
let g:netrw_hide = 1

" Enable mouse control:
set mouse=a

" Enable jump to last edited line when re-open file:
if has('autocmd')
  autocmd BufReadPost * if line("'\"") > 0 && line("'\"") < line("$") | exec "normal! g'\"" | endif
endif

" Config Gvim:
if has('gui_running')
  " Set colorscheme:
  colorscheme default
  set background=light

  " Hide tool bar:
  set guioptions-=T

  " Default window size:
  set columns=75
  set lines=25

  if has('gui_win32')
    " Set font:
    set guifont=consolas:h10
    set encoding=utf-8

    " Config backup path:
    " set backupdir=~/vimfiles/backups
    " set undodir=~/vimfiles/backups
    " set directory=~/vimfiles/backups
  endif
endif

" Change default leader key (my little finger too short for press backsplash key):
let g:mapleader=","

" Shortcuts for replace Esc key:
nnoremap <Leader><Leader> <Esc>
inoremap <Leader><Leader> <Esc>
vnoremap <Leader><Leader> <Esc>

" Shortcuts for open command mode (prompt):
nnoremap <Leader>ee :
vnoremap <Leader>ee :
inoremap <Leader>ee <ESC>:
nnoremap <Leader>er :r!
inoremap <Leader>er <ESC>:r!
nnoremap <Leader>e1 :!
inoremap <Leader>e1 <ESC>:!

" Shortcuts for quickly save and exit:
nnoremap <Leader>ww :w<CR>
nnoremap <Leader>wq :wq<CR>
nnoremap <Leader>wf :w!<CR>
nnoremap <Leader>qq :q<CR>
nnoremap <Leader>qf :q!<CR>
nnoremap <Leader>qa :qa<CR>
nnoremap <Leader>qc :qa!<CR>
inoremap <Leader>ww <ESC>:w<CR>a
inoremap <Leader>wq <ESC>:wq<CR>
inoremap <Leader>wf <ESC>:w!<CR>a
inoremap <Leader>qq <ESC>:q<CR>
inoremap <Leader>qf <ESC>:q!<CR>
inoremap <Leader>qa <ESC>:qa<CR>
inoremap <Leader>qc <ESC>:qa!<CR>

" Shortcuts for working with many files:
nnoremap <Leader>fe :Explore<CR>
nnoremap <Leader>fv :Vexplore<CR>
nnoremap <Leader>fh :Hexplore<CR>
nnoremap <Leader>ft :Texplore<CR>
nnoremap <Leader>fl :Lexplore<CR>
nnoremap <Leader>fr :Rexplore<CR>

" Shortcuts for working with clipboard:
vnoremap <Leader>cy "+y<CR>
vnoremap <Leader>cx "+x<CR>
nnoremap <Leader>cp "+gp<CR>
inoremap <Leader>cp <Esc>"+gpa<CR>
vnoremap <Leader>cp "+gp<CR>
nnoremap <Leader>cl 0v$h"+y$
inoremap <Leader>cl <ESC>0v$h"+y$a

" Shortcuts for toggle input Vietnamese with keymap:
nnoremap <Leader>v0 :set keymap=<CR>
nnoremap <Leader>vq :set keymap=vietnamese-viqr_utf-8<CR>
nnoremap <Leader>vt :set keymap=vietnamese-telex_utf-8<CR>
nnoremap <Leader>vv :set keymap=vietnamese-vni_utf-8<CR>
inoremap <Leader>v0 <ESC>:set keymap=<CR>a
inoremap <Leader>vq <ESC>:set keymap=vietnamese-viqr_utf-8<CR>a
inoremap <Leader>vt <ESC>:set keymap=vietnamese-telex_utf-8<CR>a
inoremap <Leader>vv <ESC>:set keymap=vietnamese-vni_utf-8<CR>a

" Shortcut for UI:
nnoremap <Leader>ut :colorscheme 
nnoremap <Leader>ub :exec &background!="dark" ? "set background=dark" : "set background=light"<CR>
nnoremap <Leader>ul0 :set laststatus=0<CR>
nnoremap <Leader>ul2 :set laststatus=2<CR>
nnoremap <Leader>ud :redraw<CR>
nnoremap <Leader>un :set number!<CR>
nnoremap <Leader>ur :set relativenumber!<CR>
nnoremap <Leader>uw :set wrap!<CR>
nnoremap <Leader>uc :set cursorline!<CR>

" Shortcuts for indent:
nnoremap <Leader>ia :set autoindent!<CR>
nnoremap <Leader>ie :set expandtab!<CR>
nnoremap <Leader>ir :retab<CR>
nnoremap <Leader>i= ggvG=<C-o><C-o>

" Shortcuts for search:
nnoremap <Leader>sh :set hlsearch!<CR>
nnoremap <Leader>ss :set smartcase!<CR>

" Shortcuts for toggle mouse controller:
nnoremap <Leader>m :exec &mouse!="" ? "set mouse=" : "set mouse=a"<CR>

" Shortcuts for tabbed:
nnoremap <Leader>tt :tabnew<CR>
nnoremap <Leader>ts :tabs<CR>
nnoremap <Leader>tm :tabm 
nnoremap <Leader>to :tabonly<CR>
