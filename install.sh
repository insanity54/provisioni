#!/bin/bash

sudo apt-get update
sudo apt-get install mg firefox vlc mpv



# git
wget -O ~/.gitignore 'https://github.com/insanity54/dotfiles/raw/master/.gitignore'
git config --global user.email "chris@grimtech.net"
git config --global user.name "Chris Grimmett"
git config --global core.excludesfile '~/.gitignore'


# Programs
cd ~/Downloads


## atom editor
wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add 
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get -y install atom



## Signal
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install signal-desktop


## Tor
wget 'https://dist.torproject.org/torbrowser/8.0.6/tor-browser-linux64-8.0.6_en-US.tar.xz'

