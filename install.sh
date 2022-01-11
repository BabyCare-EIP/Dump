#!/usr/bin/sh

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

## Dependancies ##

apt update -y

apt_packages=(curl
	  wget
	  gdebi-core
	  nodejs
	  npm
	  snap
	  docker
	  docker-compose)

apt install -y ${apt_packages[@]}


## Downloads ##

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

wget https://github.com/shiftkey/desktop/releases/download/release-2.9.3-linux3/GitHubDesktop-linux-2.9.3-linux3.deb

## npm packages ## 

npm_packages=(yarn
	      styled-components
	      cypress
	      jest
	      enzyme
	      mocha
	      chai
	      expo
	      expo-cli
	      gatsby
	      gatsby-cli
	      next
	      mongoose)

npm i -g ${npm_packages[@]}

## Applications ##

gdebi GitHubDesktop-linux-2.9.3-linux3.deb
dpkg -i google-chrome-stable_current_amd64.deb

snap install telegram-desktop
snap install notion-snap
snap install figma-linux
snap install webstorm --classic
snap install teams

## Optional

# snap install brave
# snap install code --classic
# snap install spotify

## SSH Key ##

ssh-keygen -q -P ¨¨
cat .ssh/id_rsa.pub
