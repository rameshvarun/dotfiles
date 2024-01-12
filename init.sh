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

# Interactive CD using FZF.
function fzfcd {
  cd ./$(find * -type d | fzf)
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
alias kdeployments="kubectl get deployments"
alias ksecrets="kubectl get secrets"

# Other aliases
alias gr="grep"
alias py="python3"

# Projects
alias dotfiles="cd ~/dotfiles"
