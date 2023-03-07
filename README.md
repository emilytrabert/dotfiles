# dotfiles
Dotfiles backup

* Brewfile > `brew bundle dump`
* emilytrabert.zsh-theme > ~/.oh-my-zsh/themes/emilytrabert.zsh-theme
* gitconfig > ~/.gitconfig
* gitignore_global > ~/.gitignore_global
* zshrc > ~/.zshrc

## Basic setup

1. Install [iTerm2](https://iterm2.com/)
2. Install [homebrew](https://brew.sh/)
3. Install zsh/oh-my-zsh
```bash
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```
4. Show hidden files: `Cmd+Shift+`
5. Install [Sublime Text](https://www.sublimetext.com/download)

## Symlinks

```bash
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
```
