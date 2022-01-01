#!/bin/bash

#create symlinks to dotfile locations
cat << EOF

------------------------------------
Creating Symbolic Links for dotfiles
------------------------------------

EOF
ln -sf /home/$USER/setup_dev_env/dotfiles/.i3_config /home/$USER/.config/i3/config
ln -sf /home/$USER/setup_dev_env/dotfiles/.vimrc /home/$USER/.vimrc
ln -sf /home/$USER/setup_dev_env/dotfiles/.bashrc /home/$USER/.bashrc
ln -sf /home/$USER/setup_dev_env/dotfiles/.zshrc /home/$USER/.zshrc
ln -sf /home/$USER/setup_dev_env/dotfiles/.p10k.zsh /home/$USER/.p10k.zsh


#install ZSH dotfile requirements
cat << EOF

------------------------------------
Install dotfile requirements for ZSH
------------------------------------

EOF
yes | sudo apt install zsh
chsh -s $(which zsh)
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

#install bash dotfile requirements
cat << EOF

-------------------------------------
Install dotfile requirements for Bash
-------------------------------------

EOF
pip install powerline-status
yes | sudo apt-get install fonts-powerline

#install vim dotfile requirements
cat << EOF

------------------------------------
Install dotfile requirements for VIM
------------------------------------

EOF
if ! test -f ~/.vim/autoload/pathogen.vim; then
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi

#install i3 dotfile requirements
cat << EOF

-----------------------------------
Install dotfile requirements for i3
-----------------------------------

EOF
yes | sudo apt-get install compton
yes | sudo apt-get install rofi
yes | sudo apt-get install ranger


i3-msg reload



