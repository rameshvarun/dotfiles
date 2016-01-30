set nocompatible

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'Shougo/vimproc'
Plug 'Shougo/vimshell.vim', { 'on': 'VimShell' }

Plug 'mileszs/ack.vim', { 'on': 'Ack' }

Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'

Plug 'majutsushi/tagbar', { 'on': 'Tagbar' }

Plug 'kchmck/vim-coffee-script'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'

Plug 'tpope/vim-fugitive'

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


times in msec
 clock   self+sourced   self:  sourced script
 clock   elapsed:              other lines

000.005  000.005: --- VIM STARTING ---
000.073  000.068: Allocated generic buffers
000.321  000.248: locale set
000.325  000.004: clipboard setup
000.331  000.006: window checked
000.783  000.452: inits 1
000.790  000.007: parsing arguments
000.791  000.001: expanding arguments
004.087  003.296: shell init
004.339  000.252: Termcap init
004.357  000.018: inits 2
004.493  000.136: init highlight
007.903  002.010  002.010: sourcing /Users/varunramesh/.vim/autoload/plug.vim
010.907  000.027  000.027: sourcing /usr/local/share/vim/vim74/ftoff.vim
039.816  000.579  000.579: sourcing /Users/varunramesh/.vim/plugged/vim-coffee-script/ftdetect/coffee.vim
040.334  000.336  000.336: sourcing /Users/varunramesh/.vim/plugged/vim-go/ftdetect/gofiletype.vim
040.537  000.080  000.080: sourcing /Users/varunramesh/.vim/plugged/rust.vim/ftdetect/rust.vim
040.882  000.081  000.081: sourcing /Users/varunramesh/.vim/plugged/vim-antlr/ftdetect/antlr3.vim
041.013  000.085  000.085: sourcing /Users/varunramesh/.vim/plugged/vim-antlr/ftdetect/antlr4.vim
041.243  000.096  000.096: sourcing /Users/varunramesh/.vim/plugged/ultisnips/ftdetect/snippets.vim
041.399  000.111  000.111: sourcing /Users/varunramesh/.vim/plugged/ultisnips/ftdetect/UltiSnips.vim
041.851  029.135  027.767: sourcing /usr/local/share/vim/vim74/filetype.vim
042.379  000.077  000.077: sourcing /usr/local/share/vim/vim74/ftplugin.vim
042.879  000.073  000.073: sourcing /usr/local/share/vim/vim74/indent.vim
044.173  000.355  000.355: sourcing /usr/local/share/vim/vim74/syntax/syncolor.vim
044.415  000.948  000.593: sourcing /usr/local/share/vim/vim74/syntax/synload.vim
044.471  001.419  000.471: sourcing /usr/local/share/vim/vim74/syntax/syntax.vim
044.802  000.025  000.025: sourcing /usr/local/share/vim/vim74/filetype.vim
045.145  000.018  000.018: sourcing /usr/local/share/vim/vim74/ftplugin.vim
045.483  000.017  000.017: sourcing /usr/local/share/vim/vim74/indent.vim
046.074  000.394  000.394: sourcing /usr/local/Cellar/vim/7.4.1190/share/vim/vim74/syntax/nosyntax.vim
046.957  000.262  000.262: sourcing /usr/local/share/vim/vim74/syntax/syncolor.vim
047.174  000.802  000.540: sourcing /usr/local/share/vim/vim74/syntax/synload.vim
047.228  001.625  000.429: sourcing /usr/local/share/vim/vim74/syntax/syntax.vim
047.962  000.307  000.307: sourcing /usr/local/share/vim/vim74/syntax/syncolor.vim
049.101  000.241  000.241: sourcing /usr/local/share/vim/vim74/syntax/syncolor.vim
049.824  000.239  000.239: sourcing /usr/local/share/vim/vim74/syntax/syncolor.vim
050.431  000.240  000.240: sourcing /usr/local/share/vim/vim74/syntax/syncolor.vim
051.056  002.668  001.948: sourcing /Users/varunramesh/.vim/plugged/molokai/colors/molokai.vim
051.225  045.922  008.521: sourcing $HOME/.vimrc
051.285  000.870: sourcing vimrc file(s)
051.616  000.131  000.131: sourcing /Users/varunramesh/.vim/plugged/vimproc/plugin/vimproc.vim
052.029  000.175  000.175: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline.vim
052.266  000.096  000.096: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/init.vim
052.667  000.120  000.120: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/parts.vim
053.187  001.455  001.064: sourcing /Users/varunramesh/.vim/plugged/vim-airline/plugin/airline.vim
058.369  005.058  005.058: sourcing /Users/varunramesh/.vim/plugged/nerdcommenter/plugin/NERD_commenter.vim
058.890  000.022  000.022: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/autoloclist.vim
058.937  000.018  000.018: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/balloons.vim
058.982  000.018  000.018: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/checker.vim
059.027  000.019  000.019: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/cursor.vim
059.072  000.020  000.020: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/highlighting.vim
059.118  000.020  000.020: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/loclist.vim
059.183  000.021  000.021: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/modemap.vim
059.230  000.021  000.021: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/notifiers.vim
059.277  000.022  000.022: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/registry.vim
059.325  000.022  000.022: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/signs.vim
060.064  000.511  000.511: sourcing /Users/varunramesh/.vim/plugged/syntastic/autoload/syntastic/util.vim
073.744  000.133  000.133: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/autoloclist.vim
073.946  000.136  000.136: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/balloons.vim
074.465  000.460  000.460: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/checker.vim
074.757  000.233  000.233: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/cursor.vim
075.010  000.196  000.196: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/highlighting.vim
075.744  000.678  000.678: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/loclist.vim
076.008  000.205  000.205: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/modemap.vim
076.227  000.164  000.164: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/notifiers.vim
077.010  000.728  000.728: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/registry.vim
077.303  000.232  000.232: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic/signs.vim
079.891  020.541  016.865: sourcing /Users/varunramesh/.vim/plugged/syntastic/plugin/syntastic.vim
081.168  000.208  000.208: sourcing /Users/varunramesh/.vim/plugged/vim-gitgutter/autoload/gitgutter/highlight.vim
083.196  003.051  002.843: sourcing /Users/varunramesh/.vim/plugged/vim-gitgutter/plugin/gitgutter.vim
083.711  000.314  000.314: sourcing /Users/varunramesh/.vim/plugged/vim-go/plugin/go.vim
083.985  000.091  000.091: sourcing /Users/varunramesh/.vim/plugged/rust.vim/plugin/rust.vim
084.116  000.092  000.092: sourcing /Users/varunramesh/.vim/plugged/rust.vim/plugin/rustfmt.vim
085.266  001.003  001.003: sourcing /Users/varunramesh/.vim/plugged/vim-surround/plugin/surround.vim
090.986  005.477  005.477: sourcing /Users/varunramesh/.vim/plugged/vim-fugitive/plugin/fugitive.vim
091.809  000.298  000.298: sourcing /Users/varunramesh/.vim/plugged/ctrlp.vim/autoload/ctrlp/mrufiles.vim
091.999  000.832  000.534: sourcing /Users/varunramesh/.vim/plugged/ctrlp.vim/plugin/ctrlp.vim
092.546  000.422  000.422: sourcing /Users/varunramesh/.vim/plugged/YouCompleteMe/plugin/youcompleteme.vim
093.155  000.127  000.127: sourcing /Users/varunramesh/.vim/plugged/ultisnips/autoload/UltiSnips/map_keys.vim
093.262  000.580  000.453: sourcing /Users/varunramesh/.vim/plugged/ultisnips/plugin/UltiSnips.vim
093.445  000.065  000.065: sourcing /Users/varunramesh/.vim/plugged/vim-snippets/plugin/vimsnippets.vim
093.990  000.087  000.087: sourcing /usr/local/share/vim/vim74/plugin/getscriptPlugin.vim
094.310  000.291  000.291: sourcing /usr/local/share/vim/vim74/plugin/gzip.vim
094.632  000.292  000.292: sourcing /usr/local/share/vim/vim74/plugin/logiPat.vim
094.891  000.229  000.229: sourcing /usr/local/share/vim/vim74/plugin/matchparen.vim
095.560  000.638  000.638: sourcing /usr/local/share/vim/vim74/plugin/netrwPlugin.vim
095.632  000.029  000.029: sourcing /usr/local/share/vim/vim74/plugin/rrhelper.vim
095.718  000.048  000.048: sourcing /usr/local/share/vim/vim74/plugin/spellfile.vim
095.949  000.195  000.195: sourcing /usr/local/share/vim/vim74/plugin/tarPlugin.vim
096.123  000.131  000.131: sourcing /usr/local/share/vim/vim74/plugin/tohtml.vim
096.327  000.167  000.167: sourcing /usr/local/share/vim/vim74/plugin/vimballPlugin.vim
096.630  000.254  000.254: sourcing /usr/local/share/vim/vim74/plugin/zipPlugin.vim
096.979  000.144  000.144: sourcing /Users/varunramesh/.vim/plugged/ultisnips/after/plugin/UltiSnips_after.vim
097.022  003.917: loading plugins
097.031  000.009: inits 3
097.277  000.246: reading viminfo
097.314  000.037: setting raw mode
097.332  000.018: start termcap
097.385  000.053: clearing screen
099.386  000.316  000.316: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/extensions.vim
099.602  000.091  000.091: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/extensions/quickfix.vim
099.817  000.071  000.071: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/extensions/netrw.vim
100.072  000.122  000.122: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/extensions/ctrlp.vim
100.356  000.124  000.124: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/extensions/hunks.vim
100.702  000.187  000.187: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/extensions/branch.vim
101.017  000.064  000.064: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/extensions/syntastic.vim
101.307  000.170  000.170: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/extensions/whitespace.vim
101.625  000.078  000.078: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/extensions/wordcount.vim
103.766  000.119  000.119: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/section.vim
104.184  000.217  000.217: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/highlighter.vim
107.108  000.105  000.105: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/themes.vim
107.423  000.574  000.469: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/themes/molokai.vim
110.756  000.124  000.124: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/util.vim
111.531  000.270  000.270: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/builder.vim
112.053  000.190  000.190: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/extensions/default.vim
129.702  029.600: opening buffers
130.377  000.453  000.453: sourcing /Users/varunramesh/.vim/plugged/syntastic/autoload/syntastic/log.vim
131.617  000.395  000.395: sourcing /Users/varunramesh/.vim/plugged/vim-gitgutter/autoload/gitgutter.vim
132.377  000.635  000.635: sourcing /Users/varunramesh/.vim/plugged/vim-gitgutter/autoload/gitgutter/utility.vim
133.030  000.334  000.334: sourcing /Users/varunramesh/.vim/plugged/vim-gitgutter/autoload/gitgutter/hunk.vim
133.076  001.557: BufEnter autocommands
133.084  000.008: editing files in windows
140.225  000.263  000.263: sourcing /Users/varunramesh/.vim/plugged/vim-airline/autoload/airline/deprecation.vim
159.576  016.233  016.233: sourcing /Users/varunramesh/.vim/plugged/YouCompleteMe/autoload/youcompleteme.vim
356.445  206.865: VimEnter autocommands
356.455  000.010: before starting main loop
357.678  001.223: first screen update
357.683  000.005: --- VIM STARTED ---
