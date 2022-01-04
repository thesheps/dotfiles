#! /bin/bash

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
git clone https://github.com/zsh-users/zsh-autosuggestions "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions"

ln -sf "$HOME/.dotfiles/.p10k.zsh" "$HOME/.p10k.zsh"
ln -sf "$HOME/.dotfiles/.zshrc" "$HOME/.zshrc"

chsh -s "$(which zsh)" sheps
exec zsh