#!/bin/sh

cp ~/.bash_profile bash_profile
cp ~/.envrc envrc
cp ~/.aliases aliases
cp ~/.config/fish/config.fish config.fish
cp -r ~/.config/fish/fish .

cp ~/.config/nvim/init.vim init.vim

cp ~/.tmux.conf tmux.conf

cp ~/.gitconfig gitconfig

# rust
cp ~/.cargo/config rust_config
