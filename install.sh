#!/usr/bin/env bash

# Vi mode in GNU Readline
ln -s $PWD/.inputrc ~/.inputrc

# Vim files
ln -s $PWD/.vim ~/.vim
ln -s $PWD/.vimrc ~/.vimrc

# Neovim files
ln -s $PWD/.vim ~/.nvim
ln -s $PWD/.vimrc ~/.nvimrc

# Tmux files
ln -s $PWD/.tmux ~/.tmux
ln -s $PWD/.tmux.conf ~/.tmux.conf

# Emacs files
ln -s $PWD/.emacs.d ~/.emacs.d

# Mjolnir
ln -s $PWD/.mjolnir ~/.mjolnir

# Aliases
ln -s $PWD/.aliases ~/.aliases
