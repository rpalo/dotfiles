#!/usr/bin/env zsh

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="avit"
DEFAULT_USER=`whoami`
COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
HIST_STAMPS="yyyy-mm-dd"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# Note: ON GUI's I may want to customize this to allow
# VS Code later
export EDITOR=vim
export VISUAL=vim

## Commands to Run

~/bin/check_dotfiles.sh
