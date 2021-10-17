#!/bin/sh

cp bash_profile ~/.bash_profile
cp envrc ~/.envrc
cp config.fish ~/.config/fish/config.fish
cp -r fish ~/.config/fish/

mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim/init.vim

cp tmux.conf ~/.tmux.conf

cp gitconfig ~/.gitconfig
