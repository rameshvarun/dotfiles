# Dotfiles

## Installing
```bash
cd ~
git clone --recursive git@github.com:rameshvarun/dotfiles.git
cd dotfiles && ./install.sh
```

If submodules have been added since the last `git pull`, you need to run:

```bash
git submodule update --init --recursive
```

## Tools

```bash
brew install vim neovim emacs zsh fzf ag tldr ffmpeg bat htop
```

## Sublime Text
On Mac:
```bash
ln -s $PWD/sublime "$HOME/Library/Application Support/Sublime Text 3/Packages/User"
```
