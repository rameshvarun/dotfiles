#!/usr/bin/env bash

# Vim files
echo "source ~/dotfiles/.vimrc" >> ~/.config/.vimrc

# Bash
echo "source ~/dotfiles/init.sh" >> ~/.bashrc

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
