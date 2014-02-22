#!/bin/bash

git submodule init
git submodule update

# Install liquidprompt
cp bash/bashrc ~/.bashrc

# Set Desktop Background
xfconf-query -c xfce4-desktop                                 \
             --property /backdrop/screen0/monitor0/image-path \
             --set ~/CONFIG/desktop/paris.jpg

# Cask (emacs)
sudo apt-get install curl
curl -fsSkL https://raw.github.com/cask/cask/master/go | python
