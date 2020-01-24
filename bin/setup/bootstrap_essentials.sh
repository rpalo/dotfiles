#!/usr/bin/env bash

# Bootstrap Essentials
# 
# Get everything set up so that yadm can take over

echo "### Bootstrap Essentials"
echo "### Setting up your computer to be bootstrapped..."

echo "## Updating packages..."
# TODO: Silence and tidy output
sudo apt update && sudo apt upgrade

required_packages=(
  ssh
  git
  curl
  vim
  yadm
)

echo "## Installing the requested packages... "
sudo apt install "${required_packages[@]}" 

echo "### Essential bootstrap complete!"

echo "### Cloning dotfiles and running main bootstrap..."
yadm clone https://github.com/rpalo/dotfiles.git --bootstrap

