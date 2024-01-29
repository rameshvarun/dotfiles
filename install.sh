#!/usr/bin/env bash

# Vi mode in GNU Readline
ln -s $PWD/.inputrc ~/.inputrc

# Vim files
echo "source ~/dotfiles/.vimrc" >> ~/.config/.vimrc

# Bash
echo "source ~/dotfiles/init.sh" >> ~/.bashrc

# Neovim files
mkdir -p ~/.config/nvim
ln -s $PWD/nvim-init.lua ~/.config/nvim/init.lua

# Tmux files
ln -s $PWD/.tmux.conf ~/.tmux.conf

# Emacs files
ln -s $PWD/.emacs.d ~/.emacs.d

# Mjolnir
ln -s $PWD/.mjolnir ~/.mjolnir

# Aliases
ln -s $PWD/.aliases ~/.aliases

# Atom snippets
ln -s $PWD/snippets.cson ~/.atom/snippets.cson
