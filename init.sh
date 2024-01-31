#!/usr/bin/env bash

# Add dotfiles/bin to the path.
export PATH="$HOME/dotfiles/bin:$PATH"

# If Neovim is installed, alias vim and vi to nvim,
# and set it as the editor.
if type "nvim" &> /dev/null; then
  alias vi="nvim"
  alias vim="nvim"
  alias vimdiff="nvim -d"
  
  export VISUAL=nvim
  export EDITOR="$VISUAL"
fi

# Replace cat with bat.
if type "bat" &> /dev/null; then
  alias cat="bat"
elif type "batcat" &> /dev/null; then
  alias cat="batcat"
  alias bat="batcat"
fi

# Interactive CD using FZF.
function fzcd {
  cd ./$(find * -type d | fzf)
}

# Interactive find file and edit.
function fzedit {
 nvim $(fzf)
}

# Command history options
export HISTSIZE=50000
export HISTFILESIZE=50000

# Git command aliases
alias g="git"
alias ga="git add"
alias gc="git commit"
alias gs="git status"
alias gp="git push"

# Kubernetes command aliases
alias kc="kubectl"
alias kpods="kubectl get pods"
alias kdeploys="kubectl get deployments"
alias ksecrets="kubectl get secrets"

# Other aliases
alias gr="grep"
alias py="python3"

# Projects
alias dotfiles="cd ~/dotfiles"
alias projects="cd ~/projects"
alias scratch="cd ~/scratch"
