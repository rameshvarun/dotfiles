" Pathogen install
execute pathogen#infect()
filetype plugin indent on

" Monokai syntax highlighting
syntax enable
set background=dark
colorscheme jellybeans

set number

" Enable project specific .vimrc files
set exrc

" Use alt-space to go to normal mode
imap <M-Space> <Esc>
" Use space to enter insert mode
nmap <Space> i

" Dont clutter directories with backup and swap files
set backupdir=~/.vim/backup
set directory=~/.vim/swap

" Make backspace behave normally
set backspace=indent,eol,start

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
