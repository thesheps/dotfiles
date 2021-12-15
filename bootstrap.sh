#! /bin/bash

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"

ln -s "$HOME/.dotfiles/.p10k.zsh" "$HOME/.p10k.zsh"
ln -s "$HOME/.dotfiles/.zshrc" "$HOME/.zshrc"

chsh -s "$(which zsh)"
exec zsh