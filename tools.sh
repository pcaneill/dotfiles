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
ask "Do you want to install docker for ubuntu?"
docker_ubuntu=$?

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

if [ $docker_ubuntu -eq 1 ]; then
  sudo apt-get update
  sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
  sudo apt-key fingerprint 0EBFCD88
  sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
  sudo apt-get update
  sudo apt-get install -y docker-ce
  sudo groupadd docker
  sudo usermod -aG docker $USER
fi
