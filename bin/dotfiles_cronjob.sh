#!/usr/bin/env bash

yadm stash &> /dev/null

if ! yadm diff origin/master --quiet; then
  touch ~/.dotfiles_behind_upstream
fi

yadm stash pop &> /dev/null

if ! yadm diff --quiet; then
  touch ~/.dotfiles_uncommitted
fi
