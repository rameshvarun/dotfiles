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
  alias cat="bat -p"
elif type "batcat" &> /dev/null; then
  alias cat="batcat -p"
  alias bat="batcat"
fi

# Replace ls with eza
if type "eza" &> /dev/null; then
  alias ls="eza"
  alias exa="eza"
elif type "exa" &> /dev/null; then
  alias ls="exa"
fi

# Alias fd -> fdfind if available.
if type "fdfind" &> /dev/null; then
  alias fd="fdfind"
fi

if type "zellij" &> /dev/null; then
  function zr () { zellij run --name "$*" -- bash -ic "$*";}
  function zrf () { zellij run --name "$*" --floating -- bash -ic "$*";}
  function ze () { zellij edit "$*";}
  function zef () { zellij edit --floating "$*";}

  if [[ "$NERD_FONT" == "1" ]]; then
    export ZELLIJ_CONFIG_FILE="$HOME/dotfiles/zellij/config.nerdfont.kdl"
  fi

  function zj () {
    zellij attach --create $(hostname)
  }
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
