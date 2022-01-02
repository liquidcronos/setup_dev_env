#!/bin/bash

cat << EOF

-------------------------------
Install ZSH and export dotfiles
-------------------------------

EOF
./zsh_setup


cat << EOF

-------------------------------
Install VIM and export dotfiles
-------------------------------

EOF
./vim_setup

cat << EOF

-----------------------------------
Install dotfile requirements for i3
-----------------------------------

EOF
./i3_setup
