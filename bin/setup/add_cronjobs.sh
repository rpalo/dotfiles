#!/usr/bin/env bash

# Adds all requested cronjobs to the current user if they don't already exist.

cronjobs="
# User-specific cron jobs
# min hour dom month dow command

# Check dotfiles for changes daily
0 10 * * * bin/dotfiles_cronjob.sh
"

echo "### Adding cron jobs to cron tab..."

if [[ -n $( crontab -l 2> /dev/null ) ]]; then
  echo "!! Crontab already exists.  Handle manually with 'crontab -e'"
  exit 1
fi

echo "$cronjobs" | crontab -

echo "### Done adding to crontab"
