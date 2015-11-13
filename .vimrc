set nocompatible

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'

Plug 'majutsushi/tagbar'

Plug 'kchmck/vim-coffee-script'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'tpope/vim-surround'

Plug 'tpope/vim-fugitive'

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
call plug#end()

filetype plugin indent on

" Syntax highlighting
syntax enable
set background=dark
colorscheme molokai

set number

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
