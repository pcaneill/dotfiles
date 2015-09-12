#!/bin/bash

ROOT=$(pwd)

echo -ne "Initializing submodules ..."
git submodule update --init --recursive > /dev/null
echo " [OK]"

# Set Desktop Background
xfconf-query -c xfce4-desktop                                 \
             --property /backdrop/screen0/monitor0/image-path \
             --set ~/CONFIG/desktop/paris.jpg

# vim
echo -ne "Initializing vim configuration ..."
mkdir vim/plugin 2> /dev/null
mkdir vim/doc 2> /dev/null

cp submodules/supertab/doc/supertab.txt vim/doc/supertab.txt
cp submodules/supertab/plugin/supertab.vim vim/plugin/supertab.vim

cp submodules/bufexplorer/doc/bufexplorer.txt vim/doc/bufexplorer.txt
cp submodules/bufexplorer/plugin/bufexplorer.vim vim/plugin/bufexplorer.vim

cp ./vim/nvimrc_perso ~/.nvimrc

# YouCompleteMe
cd ./vim/bundle/YouCompleteMe/
./install.sh --clang-completer > /dev/null
if [ $? -ne 0 ]; then
    echo "Unable to install YouCompleteMe"
    exit
fi
cd $ROOT

# Tern
cd ./vim/bundle/tern/
npm install > /dev/null
cd node_modules/tern/plugin/
wget https://raw.githubusercontent.com/Slava/tern-meteor/master/meteor.js 2> /dev/null
if [ $? -ne 0 ]; then
    echo "Unable to get meteor.js tern plugin"
    exit
fi
cd $ROOT
echo " [OK]"

# git
echo -ne "Initializing git configuration ..."
ln -s CONFIG/git/gitconfig ~/.gitconfig
echo " [OK]"

# tig
echo -ne "Initializing tig configuration ..."
ln -s CONFIG/tig/tigrc ~/.tigrc
echo " [OK]"

# tmux
echo -ne "Initializing tmux configuration ..."
ln -s CONFIG/tmux/tmux.conf ~/.tmux.conf
echo " [OK]"

# valgrind
echo -ne "Initializing valgrind configuration ..."
ln -s CONFIG/valgrind/valgrindrc ~/.valgrindrc
echo " [OK]"

# top
echo -ne "Initializing top configuration ..."
ln -s CONFIG/top/toprc ~/.toprc
echo " [OK]"

# Core generation
#mkdir -p /srv/data/cores
#echo "kernel.core_pattern = /srv/data/cores/%e.%t.%p.core" >> /etc/sysctl.conf
#ulimit -c unimited
