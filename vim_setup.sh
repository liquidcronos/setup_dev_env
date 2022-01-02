#!/bin/bash

yes | sudo apt-get install vim

ln -sf /home/$USER/setup_dev_env/dotfiles/.vimrc /home/$USER/.vimrc

if ! test -f ~/.vim/autoload/pathogen.vim; then
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
fi


