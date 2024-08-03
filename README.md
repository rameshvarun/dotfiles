# Dotfiles

## Installing
```bash
git clone --recursive git@github.com:rameshvarun/dotfiles.git ~/dotfiles

# For ZSH
echo "source ~/dotfiles/init.zsh" >> ~/.zshrc

# For BASH
echo "source ~/dotfiles/init.sh" >> ~/.bashrc
```
If submodules have been added since the last `git pull`, run:

```bash
git submodule update --init --recursive
```
