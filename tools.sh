#!/bin/bash

ask() {
  while true; do
    read -p "$1 ([y]/n) " -r
    REPLY=${REPLY:-"y"}
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      return 1
    elif [[ $REPLY =~ ^[Nn]$ ]]; then
      return 0
    fi
  done
}

mkdir ~/tools

ask "Do you want to install neovim-qt?"
neovim_qt=$?
ask "Do you want to install fzf?"
fzf=$?

if [ $neovim_qt -eq 1 ]; then
  cd ~/tools
  git clone https://github.com/equalsraf/neovim-qt.git
  cd neovim-qt
  mkdir build
  cd build
  cmake -DCMAKE_BUILD_TYPE=Release ..
  make
  sudo make install
  cd
fi


if [ $fzf -eq 1 ]; then
  cd ~/tools
  git clone --depth 1 https://github.com/junegunn/fzf.git
  cd fzf
  ./install --all --64
  cd
fi
