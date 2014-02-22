#!/bin/bash

git submodule init
git submodule update

# Install liquidprompt
cp bash/bashrc ~/.bashrc

# Set Desktop Background
xfconf-query -c xfce4-desktop                                 \
             --property /backdrop/screen0/monitor0/image-path \
             --set ~/CONFIG/desktop/paris.jpg

# emacs
cp emacs/emacs ~/.emacs

# git
cp git/gitconfig ~/.gitconfig
