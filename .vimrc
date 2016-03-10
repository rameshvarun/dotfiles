set nocompatible

" Plugins
call plug#begin('~/.vim/plugged')

" A shell that can run in vim. (Neovim has :terminal).
Plug 'Shougo/vimproc'
Plug 'Shougo/vimshell.vim', { 'on': 'VimShell' }

" Fast find in project.
Plug 'mileszs/ack.vim', { 'on': 'Ack' }
Plug 'rking/ag.vim', { 'on': 'Ag'  }

" Switch between .c and .h rapidly.
Plug 'a.vim', { 'on': 'A' }

" Add custom names to tabs.
Plug 'gcmt/taboo.vim'

" Custom start screen.
Plug 'mhinz/vim-startify'

Plug 'bling/vim-airline' " Status line.
Plug 'scrooloose/nerdtree' " Better file tree.
Plug 'scrooloose/nerdcommenter' " Manipulate comments.
Plug 'scrooloose/syntastic' " Syntax checking.
Plug 'tpope/vim-surround' " Manipulate surrounding characters.
Plug 'tommcdo/vim-exchange' " Quickly exhange two regions of text.

Plug 'haya14busa/incsearch.vim' " Highlight all matches during incremental search.
Plug 'haya14busa/incsearch-fuzzy.vim' " Fuzzy incremental search.

Plug 'chilicuil/vim-sprunge', { 'on': 'Sprunge' } " Sprunge pastebin

" View tags in current file with tree-like interface. 
Plug 'majutsushi/tagbar', { 'on': 'Tagbar' }

" Language-specific plugins.
Plug 'kchmck/vim-coffee-script' " Coffeescript
Plug 'fatih/vim-go'             " Golang
Plug 'rust-lang/rust.vim'       " Rust
Plug 'jrozner/vim-antlr'        " Antlr (grammar files)
Plug 'lervag/vimtex'            " Latex

" Git and GitHub utilities.
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb', { 'on': 'Gbrowse' }

Plug 'ctrlpvim/ctrlp.vim' " Fuzzy file and buffer search.
Plug 'junegunn/goyo.vim', { 'on': 'Goyo' } " Focus mode.
Plug 'Valloric/YouCompleteMe' " Autocompletion.

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

" Use airline's better tabline.
let g:airline#extensions#tabline#enabled = 1

" Airline-Taboo integration.
let g:taboo_tabline = 0
let g:airline#extensions#taboo#enabled = 1

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

" Use incsearch.vim
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

" Fuzzy incremental search
map z/ <Plug>(incsearch-fuzzy-/)
map z? <Plug>(incsearch-fuzzy-?)
map zg/ <Plug>(incsearch-fuzzy-stay)

set breakindent " On word wrap, match the indent of the previous line.
set showbreak=\ \ \ \  " Wrapped lines are indented a little bit more.

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

" Setup :Shell command
if has('nvim')
  " If this is neovim, we can use an actual shell. Prefer fish, then zsh, then
  " the system default.
  if executable('fish')
    command Shell terminal fish
  elseif executable('zsh')
    command Shell terminal zsh
  else
    command Shell terminal
  end

  :tnoremap <Esc> <C-\><C-n> " Map Esc to exit terminal mode.
else
  " For regular vim, we use VimShell
  command Shell VimShell
end
