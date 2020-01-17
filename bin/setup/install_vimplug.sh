#!/usr/bin/env bash

# install_vimplug.sh
# 
# Installs the vim-plug plugin manager for vim and installs all 
# currently configured plugins

echo "Installing Vim Plug..."

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Vim Plug installed.  Installing all configured plugins..."

vim +PlugInstall +qall

echo "Done."
