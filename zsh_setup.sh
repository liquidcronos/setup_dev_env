#!/bin/bash

yes | sudo apt install zsh
chsh -s $(which zsh)


yes | sudo apt-get install -y fonts-font-awesome


yes | sudo apt-get install fonts-powerline


sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/themes/powerlevel10k
ln -sf /home/$USER/setup_dev_env/dotfiles/.p10k.zsh /home/$USER/.p10k.zsh

git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/plugins/zsh-autosuggestions

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/plugins/zsh-syntax-highlighting

git clone https://github.com/supercrabtree/k ~/.oh-my-zsh/plugins/k

ln -sf /home/$USER/setup_dev_env/dotfiles/.zshrc /home/$USER/.zshrc
