#!/usr/bin/env bash

# Vi mode in GNU Readline
ln -s $PWD/.inputrc ~/.inputrc

# Vim files
echo "source ~/dotfiles/.vimrc" >> ~/.config/.vimrc

# Bash
echo "source ~/dotfiles/init.sh" >> ~/.bashrc

# Neovim files
ln -s $PWD/nvim/ ~/.config/nvim

# Zellij Configuration
ln -s $PWD/zellij/ ~/.config/zellij

# Atuin Configuration
ln -s $PWD/atuin/ ~/.config/atuin

# Helix configuration
ln -s $PWD/helix/ ~/.config/helix

# Tmux files
ln -s $PWD/.tmux.conf ~/.tmux.conf

# Wezterm configuration
ln -s $PWD/.wezterm.lua ~/.wezterm.lua

# Emacs files
ln -s $PWD/.emacs.d ~/.emacs.d

# Mjolnir
ln -s $PWD/.mjolnir ~/.mjolnir

# Aliases
ln -s $PWD/.aliases ~/.aliases

# Atom snippets
ln -s $PWD/snippets.cson ~/.atom/snippets.cson
