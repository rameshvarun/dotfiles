# Save history
export HISTFILE="$HOME/.zsh_history"
export HISTSIZE=10000
export SAVEHIST=10000
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS

zplug "plugins/git",   from:oh-my-zsh # Git integration
zplug "zsh-users/zsh-syntax-highlighting", defer:2 # Syntax highlighting
zplug 'dracula/zsh', as:theme # Dracula theme

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load --verbose
