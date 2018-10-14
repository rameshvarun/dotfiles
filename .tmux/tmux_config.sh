#!/usr/bin/env bash
TMUX_VERSION="$(tmux -V | cut -c 6-)"
echo "Tmux Version: $TMUX_VERSION"

if [[ $(echo "$TMUX_VERSION < 2.1" | bc) -eq 1 ]] ; then
	tmux set -g mode-mouse on
	tmux set -g mouse-resize-pane on
	tmux set -g mouse-select-pane on
	tmux set -g mouse-select-window on
fi

if [[ $(echo "$TMUX_VERSION >= 2.1" | bc) -eq 1 ]] ; then
	tmux set -g mouse on
fi

if which zsh; then
	tmux set-option -g default-shell $(which zsh)
elif which tcsh; then
	tmux set-option -g default-shell $(which tcsh)
else
	tmux set-option -g default-shell $(which bash)
fi

