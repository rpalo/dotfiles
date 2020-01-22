#!/usr/bin/env bash

# install_vimplug.sh
# 
# Installs the vim-plug plugin manager for vim and installs all 
# currently configured plugins

echo "### Ensuring Vim Plug..."

if [[ ! -f .vim/autoload/plug.vim ]]; then
  echo "## No Vim Plug detected.  Installing..."
  curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

echo "### Vim Plug installed.  Installing all configured plugins..."

vim +PlugInstall +qall

echo "### Done."
