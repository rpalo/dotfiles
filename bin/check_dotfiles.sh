#!/usr/bin/env bash

# check_dotfiles.sh
#
# Checks whether or not the dotfiles have been changed and need pushing/pulling

clean="true"

if [[ -f ~/.dotfiles_behind_upstream ]]; then
  echo "Your dotfiles aren't up to date with remote."
  read -p "Sync now?  [yN]" -n1 response

  if [[ $response == y ]]; then
    yadm pull
    echo "Dotfiles synced."
    rm ~/.dotfiles_behind_upstream
  else
    echo "Skipping sync."
  fi
  clean="false"
fi

if [[ -f ~/.dotfiles_uncommitted ]]; then
  echo "There are unstaged changes to your dotfiles."
  echo
  yadm status
  rm ~/.dotfiles_uncommitted
  clean="false"
fi

if [[ $clean == true ]]; then
  echo "Dotfiles are up to date."
fi
