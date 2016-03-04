set nocompatible

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc'
Plug 'Shougo/vimshell.vim', { 'on': 'VimShell' }

Plug 'mileszs/ack.vim', { 'on': 'Ack' }
Plug 'rking/ag.vim', { 'on': 'Ag'  }
Plug 'a.vim', { 'on': 'A' }

Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'

Plug 'majutsushi/tagbar', { 'on': 'Tagbar' }

Plug 'kchmck/vim-coffee-script'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'

Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb', { 'on': 'Gbrowse' }

Plug 'lervag/vimtex'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }
Plug 'Valloric/YouCompleteMe'

Plug 'jrozner/vim-antlr'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Colorschemes
Plug 'sickill/vim-monokai'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'junegunn/seoul256.vim'

call plug#end()

filetype plugin indent on

" Arrows in NERDTree sometimes display incorrectly.
let g:NERDTreeDirArrows=0

" Syntax highlighting
syntax enable
set background=dark
colorscheme molokai " Monokai theme.

set laststatus=2 " Always have a stats bar.
set number " Line numbers.
set ruler " Column / line number.
set wildmenu " Enhanced comand-line completion.
set autoread " Automatically read changed files in.
set hidden " Allow hidden buffers.

set incsearch " Incremental search.

" If possible, leave a line above and below the cursor when scrolling.
if !&scrolloff
  set scrolloff=1
endif

" Larger history.
if &history < 1000
  set history=1000
endif

" Enable project specific .vimrc files
set exrc

" Use alt-space to go to normal mode
imap <M-Space> <Esc>
" Use space to enter insert mode
nmap <Space> i

" Snippet bindings
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" Support mouse events
set mouse=a

" Dont clutter directories with backup and swap files
set backupdir=~/.vim/backup
set directory=~/.vim/swap

" Delete swap files with :ClearSwap command.
command ClearSwap ! rm -f ~/.vim/swap/*.swp

" Make backspace behave normally
set backspace=indent,eol,start

" Up and down move along display lines, instead of physical lines
noremap  <buffer> <silent> <Up>   gk
noremap  <buffer> <silent> <Down> gj
inoremap <buffer> <silent> <Up>   <C-o>gk
inoremap <buffer> <silent> <Down> <C-o>gj

" Move lines and blocks up and down
nnoremap <C-Down> :m .+1<CR>==
nnoremap <C-Up> :m .-2<CR>==
inoremap <C-Down> <Esc>:m .+1<CR>==gi
inoremap <C-Up> <Esc>:m .-2<CR>==gi
vnoremap <C-Down> :m '>+1<CR>gv=gv
vnoremap <C-Up> :m '<-2<CR>gv=gv

" Use Shit-Arrow to move around windows
nmap <silent> <S-Up> :wincmd k<CR>
nmap <silent> <S-Down> :wincmd j<CR>
nmap <silent> <S-Left> :wincmd h<CR>
nmap <silent> <S-Right> :wincmd l<CR>

