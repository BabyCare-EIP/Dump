#!/usr/bin/sh

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

## Clone BabyCare repositories ##

git_repositories=(git@github.com:BabyCare-EIP/BabyCare.git
                  git@github.com:BabyCare-EIP/Website.git
                  git@github.com:BabyCare-EIP/Watcher.git
                  git@github.com:BabyCare-EIP/Mobile.git
                  )

git clone ${git_repositories[@]}


## Node version configuration ##

nvm install 16.13.2
