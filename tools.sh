#!/bin/bash

mkdir ~/tools
cd ~/tools
git clone http://github.com/neovim/neovim.git
cd neovim
make
sudo make install


cd ~/tools
git clone https://github.com/equalsraf/neovim-qt.git
cd neovim-qt
mkdir build
cd build
cmake ..
make


cd ~/tools
git clone https://github.com/cgdb/cgdb.git
cd cgdb
./autogen.sh
./configure --prefix=/usr/local
make

