#!/bin/bash

ROOT=$(pwd)

echo -ne "Initializing submodules ..."
script -q -c 'git submodule update --init --recursive' > /dev/null
echo " [OK]"

# Set Desktop Background
xfconf-query -c xfce4-desktop                                 \
             --property /backdrop/screen0/monitor0/image-path \
             --set ~/CONFIG/desktop/paris.jpg

# vim
echo -ne "Initializing vim configuration ..."
mkdir vim/plugin 2> /dev/null
mkdir vim/doc 2> /dev/null
mkdir vim/bundle 2> /dev/null

ln -s ../../submodules/vim/a                  vim/bundle/a                 2> /dev/null
ln -s ../../submodules/vim/bufexplorer        vim/bundle/bufexplorer       2> /dev/null
ln -s ../../submodules/vim/ctrlp              vim/bundle/ctrlp             2> /dev/null
ln -s ../../submodules/vim/htlm5              vim/bundle/htlm5             2> /dev/null
ln -s ../../submodules/vim/nerdcommenter      vim/bundle/nerdcommenter     2> /dev/null
ln -s ../../submodules/vim/nerdtree           vim/bundle/nerdtree          2> /dev/null
ln -s ../../submodules/vim/seoul256           vim/bundle/seoul256          2> /dev/null
ln -s ../../submodules/vim/supertab           vim/bundle/supertab          2> /dev/null
ln -s ../../submodules/vim/tern               vim/bundle/tern              2> /dev/null
ln -s ../../submodules/vim/vim-airline        vim/bundle/vim-airline       2> /dev/null
ln -s ../../submodules/vim/vim-fugitive       vim/bundle/vim-fugitive      2> /dev/null
ln -s ../../submodules/vim/vim-gitgutter      vim/bundle/vim-gitgutter     2> /dev/null
ln -s ../../submodules/vim/vim-javascript     vim/bundle/vim-javascript    2> /dev/null
ln -s ../../submodules/vim/vim-man            vim/bundle/vim-man           2> /dev/null
ln -s ../../submodules/vim/gtags              vim/bundle/gtags             2> /dev/null
ln -s ../../submodules/vim/vim-signature      vim/bundle/vim-signature     2> /dev/null
ln -s ../../submodules/vim/vim-spacebars      vim/bundle/vim-spacebars     2> /dev/null
ln -s ../../submodules/vim/editorconfig-vim   vim/bundle/editorconfig-vim  2> /dev/null
ln -s ../../submodules/vim/syntastic          vim/bundle/syntastic         2> /dev/null
ln -s ../../submodules/vim/ultisnips          vim/bundle/ultisnips         2> /dev/null
ln -s ../../submodules/vim/neomake            vim/bundle/neomake           2> /dev/null
ln -s ../../submodules/vim/neoterm            vim/bundle/neoterm           2> /dev/null
ln -s ../../submodules/vim/YouCompleteMe      vim/bundle/YouCompleteMe     2> /dev/null

cp ./vim/nvimrc_perso ~/.nvimrc
cp ./vim/vimrc_perso ~/.vimrc

# YouCompleteMe
cd vim/bundle/YouCompleteMe/
script -q -c './install.py --clang-completer' > /dev/null
if [ $? -ne 0 ]; then
    echo "Unable to install YouCompleteMe"
    exit
fi
cd $ROOT

# Tern
cd vim/bundle/tern/
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
ln -s CONFIG/git/gitconfig ~/.gitconfig 2> /dev/null
echo " [OK]"

# tig
echo -ne "Initializing tig configuration ..."
ln -s CONFIG/tig/tigrc ~/.tigrc 2> /dev/null
echo " [OK]"

# tmux
echo -ne "Initializing tmux configuration ..."
ln -s CONFIG/tmux/tmux.conf ~/.tmux.conf 2> /dev/null
echo " [OK]"

# valgrind
echo -ne "Initializing valgrind configuration ..."
ln -s CONFIG/valgrind/valgrindrc ~/.valgrindrc 2> /dev/null
echo " [OK]"

# top
echo -ne "Initializing top configuration ..."
ln -s CONFIG/top/toprc ~/.toprc  2> /dev/null
echo " [OK]"

# Core generation
#mkdir -p /srv/data/cores
#echo "kernel.core_pattern = /srv/data/cores/%e.%t.%p.core" >> /etc/sysctl.conf
#ulimit -c unimited
