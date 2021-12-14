#! /bin/bash

sudo apt update
sudo apt upgrade
sudo apt install zsh git-all -y
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

gh repo clone romkatv/powerlevel10k "$ZSH_CUSTOM/themes/powerlevel10k"
git clone https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"