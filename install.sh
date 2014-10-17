#!/bin/bash

git submodule init
git submodule update
git submodule update --recursive

# Set Desktop Background
xfconf-query -c xfce4-desktop                                 \
             --property /backdrop/screen0/monitor0/image-path \
             --set ~/CONFIG/desktop/paris.jpg

# emacs
cp emacs/emacs ~/.emacs

# vim
mkdir vim/plugin
mkdir vim/doc

cp submodules/supertab/doc/supertab.txt vim/doc/supertab.txt
cp submodules/supertab/plugin/supertab.vim vim/plugin/supertab.vim

cp submodules/bufexplorer/doc/bufexplorer.txt vim/doc/bufexplorer.txt
cp submodules/bufexplorer/plugin/bufexplorer.vim vim/plugin/bufexplorer.vim

# git
ln -s CONFIG/git/gitconfig ~/.gitconfig

# tig
ln -s CONFIG/tig/tigrc ~/.tigrc

# tmux
ln -s CONFIG/tmux/tmux.conf ~/.tmux.conf

# valgrind
ln -s CONFIG/valgrind/valgrindrc ~/.valgrindrc
