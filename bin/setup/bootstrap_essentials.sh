#!/usr/bin/env bash

# Bootstrap Essentials
# 
# Get everything set up so that yadm can take over

echo "=== Updating ==="
sudo apt update && sudo apt upgrade

required_packages=(
  ssh
  git
  curl
  vim
  yadm
)

echo "=== Installing the requested packages ==="
sudo apt install "${required_packages[@]}" 

echo "=== Essential bootstrap complete! ==="

echo "=== Cloning dotfiles ==="
yadm clone https://github.com/rpalo/dotfiles.git --bootstrap

