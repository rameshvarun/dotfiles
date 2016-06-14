#!/usr/bin/env bash

# Vi mode in GNU Readline
ln -s $PWD/.inputrc ~/.inputrc

# Vim files
ln -s $PWD/.vim ~/.vim
ln -s $PWD/.vimrc ~/.vimrc

# Neovim files
mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
ln -s ~/.vim $XDG_CONFIG_HOME/nvim
ln -s ~/.vimrc $XDG_CONFIG_HOME/nvim/init.vim

# Tmux files
ln -s $PWD/.tmux ~/.tmux
ln -s $PWD/.tmux.conf ~/.tmux.conf

# Emacs files
ln -s $PWD/.emacs.d ~/.emacs.d

# Mjolnir
ln -s $PWD/.mjolnir ~/.mjolnir

# Aliases
ln -s $PWD/.aliases ~/.aliases
