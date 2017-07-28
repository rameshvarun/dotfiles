# First load regular bash options.
source ~/dotfiles/init.sh

# History Options
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS

# Load ZPlug
export ZPLUG_HOME=~/dotfiles/zplug
source $ZPLUG_HOME/init.zsh

zplug "plugins/git",   from:oh-my-zsh # Git integration
zplug "zsh-users/zsh-syntax-highlighting", defer:2 # Syntax highlighting
zplug "zsh-users/zsh-autosuggestions", defer:3 # Autosuggest on type (like fish shell)
zplug 'dracula/zsh', as:theme # Dracula theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

# Line navigation bindings
bindkey -e
bindkey '[C' forward-word
bindkey '[D' backward-word

# Edit the current command line in $EDITOR
autoload -U edit-command-line
zle -N edit-command-line
bindkey '\C-x\C-e' edit-command-line
