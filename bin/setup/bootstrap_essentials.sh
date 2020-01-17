#!/usr/bin/env bash

# Bootstrap Essentials
# 
# Get everything set up so that yadm can take over

# Make sure we're all updated and ready to go
sudo apt update && sudo apt upgrade

# Install the stuff that makes it easy to install all the other stuff
required_packages=(
  ssh
  git
  curl
  vim
  yadm
)

sudo apt install $required_packages 
