#! /bin/bash

sudo apt update
sudo apt upgrade
sudo apt install zsh git-all -y

git clone https://github.com/thesheps/dotfiles "$HOME/.dotfiles"
sh "$HOME/.dotfiles/bootstrap.sh"