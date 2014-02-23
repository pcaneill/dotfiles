#!/bin/bash

git submodule init
git submodule update

# Bash
cp bash/bashrc ~/.bashrc
cp bash/git-prompt.sh ~/.git-prompt.sh
cp bash/git-completion.bash ~/.git-completion.bash

# Set Desktop Background
xfconf-query -c xfce4-desktop                                 \
             --property /backdrop/screen0/monitor0/image-path \
             --set ~/CONFIG/desktop/paris.jpg

# emacs
cp emacs/emacs ~/.emacs

# git
cp git/gitconfig ~/.gitconfig
