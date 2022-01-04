#! /usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
    brew install zsh -y
elif [ "$(uname)" == "Linux" ]; then
    sudo apt update
    sudo apt upgrade
    sudo apt install zsh git-all -q
fi

if cd "$HOME/.dotfiles"; then git pull; else git clone https://github.com/thesheps/dotfiles "$HOME/.dotfiles"; fi
sh "$HOME/.dotfiles/bootstrap.sh"