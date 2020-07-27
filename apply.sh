#!/bin/sh

cp bash_profile ~/.bashrc
cp envrc ~/.envrc
cp aliases ~/.aliases
cp config.fish ~/.config/fish/config.fish
cp -r fish ~/.config/fish/

cp init.vim ~/.config/nvim/init.vim

cp tmux.conf ~/.tmux.conf

cp gitconfig ~/.gitconfig

# rust
cp rust_config ~/.cargo/config
