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

ask "Do you want to install fzf?"
fzf=$?

if [ $fzf -eq 1 ]; then
  cd ~/tools
  git clone --depth 1 https://github.com/junegunn/fzf.git
  cd fzf
  ./install --all --64
  cd
fi
