#! /usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
    brew install zsh -y
elif [ "$(uname)" == "Linux" ]; then
    sudo apt update
    sudo apt upgrade
    sudo apt install zsh git-all -q
fi

git clone https://github.com/thesheps/dotfiles "$HOME/.dotfiles"
sh "$HOME/.dotfiles/bootstrap.sh"