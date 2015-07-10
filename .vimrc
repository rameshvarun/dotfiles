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
:imap <M-Space> <Esc>
" Use space to enter insert mode
:nmap <Space> i

" Dont clutter directories with backup and swap files
set backupdir=~/.vim/backup
set directory=~/.vim/swap
