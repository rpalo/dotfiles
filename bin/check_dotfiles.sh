#!/usr/bin/env bash

# check_dotfiles.sh
#
# Checks whether or not the dotfiles have been changed and need pushing/pulling

if [[ yadm diff --quiet ]]; then
  echo "There are unstaged changes to your dotfiles."
  echo
  yadm status
fi

if [[ yadm diff origin/master --quiet ]]; then
  echo "Your dotfiles aren't up to date with remote."
  read -p "Sync now?  [yN]" -n1 response

  if [[ $response == y ]]; then
    yadm pull
    echo "Dotfiles synced."
    exit 0
  else
    echo "Skipping sync."
  fi
fi
