#!/usr/bin/sh

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

## Clone BabyCare repositories ##

git clone git@github.com:BabyCare-EIP/BabyCare.git

git clone git@github.com:BabyCare-EIP/Website.git

git clone git@github.com:BabyCare-EIP/Watcher.git

git clone git@github.com:BabyCare-EIP/Mobile.git
