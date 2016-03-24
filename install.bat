:: Vim configurations.
mklink /d "%UserProfile%\vimfiles" "%cd%\.vim"
mklink "%UserProfile%\.vimrc" "%cd%\.vimrc"

:: Neovim configuration.
mklink /d "%UserProfile%\AppData\Local\nvim" "%cd%\.vim"
mklink "%cd%\.vim\init.vim" "%cd%\.vimrc"

:: Aliases.
mklink "%UserProfile%\.aliases" "%cd%\.aliases"

:: Emacs configurations.
mklink /d "%UserProfile%\.emacs.d" "%cd%\.emacs.d"
