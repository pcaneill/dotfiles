#!/bin/bash

mkdir ~/tools

cd ~/tools
git clone https://github.com/equalsraf/neovim-qt.git
cd neovim-qt
mkdir build
cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make
sudo make install
