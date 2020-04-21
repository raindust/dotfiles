#!/bin/bash

cp bash_profile ~/.bash_profile
cp zshrc ~/.zshrc
cp envrc ~/.envrc
cp aliases ~/.aliases
cp oh-my-zsh.sh ~/.oh-my-zsh/oh-my-zsh.sh
cp config.fish ~/.config/fish/config.fish
cp -r fish ~/.config/fish/

cp init.vim ~/.config/nvim/init.vim
cp ideavimrc ~/.ideavimrc
cp keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
cp settings.json ~/Library/Application\ Support/Code/User/settings.json
cp preferences.xiconfig ~/Library/Application\ Support/XiEditor/preferences.xiconfig

cp tmux.conf ~/.tmux.conf
cp alacritty.yml ~/.config/alacritty/alacritty.yml

cp zathurarc ~/.config/zathura/zathurarc

cp gitconfig ~/.gitconfig

# rust
cp rust_config ~/.cargo/config
