#!/usr/bin/env bash

# Vi mode in GNU Readline
ln -s $PWD/.inputrc ~/.inputrc

# Vim files
echo "source ~/dotfiles/.vimrc" >> ~/.config/.vimrc

# Neovim files
mkdir -p ~/.config/nvim
echo "source ~/dotfiles/.vimrc" >> ~/.config/nvim/init.vim

# Tmux files
ln -s $PWD/.tmux ~/.tmux
ln -s $PWD/.tmux.conf ~/.tmux.conf

# Emacs files
ln -s $PWD/.emacs.d ~/.emacs.d

# Mjolnir
ln -s $PWD/.mjolnir ~/.mjolnir

# Aliases
ln -s $PWD/.aliases ~/.aliases

# Atom snippets
ln -s $PWD/snippets.cson ~/.atom/snippets.cson
