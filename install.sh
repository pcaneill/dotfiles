#!/bin/bash

ROOT=$(pwd)

echo -ne "Initializing submodules ..."
script -q -c 'git submodule update --init --recursive' > /dev/null
echo " [OK]"

# {{{ Desktop Background

xfconf-query -c xfce4-desktop                                 \
             --property /backdrop/screen0/monitor0/image-path \
             --set ~/CONFIG/desktop/paris.jpg
# }}}
# {{{ Vim

echo -ne "Initializing vim configuration ..."
mkdir vim/plugin 2> /dev/null
mkdir vim/doc    2> /dev/null
mkdir vim/bundle 2> /dev/null

ln -s ../../submodules/vim/YouCompleteMe      vim/bundle/YouCompleteMe     2> /dev/null
ln -s ../../submodules/vim/a                  vim/bundle/a                 2> /dev/null
ln -s ../../submodules/vim/badwolf            vim/bundle/badwolf           2> /dev/null
ln -s ../../submodules/vim/bufexplorer        vim/bundle/bufexplorer       2> /dev/null
ln -s ../../submodules/vim/ctrlp              vim/bundle/ctrlp             2> /dev/null
ln -s ../../submodules/vim/delimitMate        vim/bundle/delimitMate       2> /dev/null
ln -s ../../submodules/vim/editorconfig-vim   vim/bundle/editorconfig-vim  2> /dev/null
ln -s ../../submodules/vim/gtags              vim/bundle/gtags             2> /dev/null
ln -s ../../submodules/vim/htlm5              vim/bundle/htlm5             2> /dev/null
ln -s ../../submodules/vim/neomake            vim/bundle/neomake           2> /dev/null
ln -s ../../submodules/vim/neoterm            vim/bundle/neoterm           2> /dev/null
ln -s ../../submodules/vim/nerdcommenter      vim/bundle/nerdcommenter     2> /dev/null
ln -s ../../submodules/vim/nerdtree           vim/bundle/nerdtree          2> /dev/null
ln -s ../../submodules/vim/seoul256           vim/bundle/seoul256          2> /dev/null
ln -s ../../submodules/vim/supertab           vim/bundle/supertab          2> /dev/null
ln -s ../../submodules/vim/syntastic          vim/bundle/syntastic         2> /dev/null
ln -s ../../submodules/vim/tern               vim/bundle/tern              2> /dev/null
ln -s ../../submodules/vim/ultisnips          vim/bundle/ultisnips         2> /dev/null
ln -s ../../submodules/vim/vim-airline        vim/bundle/vim-airline       2> /dev/null
ln -s ../../submodules/vim/vim-fugitive       vim/bundle/vim-fugitive      2> /dev/null
ln -s ../../submodules/vim/vim-gitgutter      vim/bundle/vim-gitgutter     2> /dev/null
ln -s ../../submodules/vim/vim-javascript     vim/bundle/vim-javascript    2> /dev/null
ln -s ../../submodules/vim/vim-man            vim/bundle/vim-man           2> /dev/null
ln -s ../../submodules/vim/vim-rtags          vim/bundle/vim-rtags         2> /dev/null
ln -s ../../submodules/vim/vim-signature      vim/bundle/vim-signature     2> /dev/null
ln -s ../../submodules/vim/vim-spacebars      vim/bundle/vim-spacebars     2> /dev/null
ln -s ../../submodules/vim/vim-cpp-enhanced-highlight vim/bundle/syntax    2> /dev/null

cp vim/vimrc_perso ~/.vimrc

if [ ${IS_WORK} ]; then
  ln -s ../../submodules/vim/vim-perfoce        vim/bundle/vim-perfoce       2> /dev/null
  ln -s ../../submodules/vim/genutils           vim/bundle/genutils          2> /dev/null
  cp vim/vimrc_work ~/.vimrc
fi


# {{{ Neovim

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
mkdir -p ${XDG_CONFIG_HOME}/nvim
ln -s  ${ROOT}/vim/nvimrc_perso ${XDG_CONFIG_HOME}/nvim/init.vim

if  [ ${IS_WORK} ]; then
  ln -s  ${ROOT}/vim/nvimrc_work ${XDG_CONFIG_HOME}/nvim/init.vim
fi


# }}}
# {{{ YouCompleteMe

cd vim/bundle/YouCompleteMe/
script -q -c './install.py --clang-completer' > /dev/null
if [ $? -ne 0 ]; then
    echo "Unable to install YouCompleteMe"
    exit
fi
cd $ROOT

# }}}
# {{{ Tern

cd vim/bundle/tern/
npm install > /dev/null
cd node_modules/tern/plugin/
wget https://raw.githubusercontent.com/Slava/tern-meteor/master/meteor.js 2> /dev/null
if [ $? -ne 0 ]; then
    echo "Unable to get meteor.js tern plugin"
    exit
fi
cd $ROOT
# }}}
# {{{ Rtags

#git clone --recursive https://github.com/Andersbakken/rtags.git
#cd tools/rtags
#cmake -DLIBCLANG_LLVM_CONFIG_EXECUTABLE="/usr/bin/llvm-config-3.7" -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang .
#make
#./bin/rdm &
#./bin/rc -J .

# }}}

echo " [OK]"

# }}}
# {{{ Git

echo -ne "Initializing git configuration ..."
ln -s CONFIG/git/gitconfig ~/.gitconfig 2> /dev/null
echo " [OK]"

# }}}
# {{{ Tig

echo -ne "Initializing tig configuration ..."
ln -s CONFIG/tig/tigrc ~/.tigrc 2> /dev/null
echo " [OK]"

# }}}
# {{{ Tmux

echo -ne "Initializing tmux configuration ..."
ln -s CONFIG/tmux/tmux.conf ~/.tmux.conf 2> /dev/null
echo " [OK]"

# }}}
# {{{ Valgrind

echo -ne "Initializing valgrind configuration ..."
ln -s CONFIG/valgrind/valgrindrc ~/.valgrindrc 2> /dev/null
echo " [OK]"

# }}}
# {{{ Top

echo -ne "Initializing top configuration ..."
ln -s CONFIG/top/toprc ~/.toprc  2> /dev/null
echo " [OK]"

# }}}
# {{{ Awesome

echo -ne "Initializing awesome configuration ..."
git clone --recursive https://github.com/copycat-killer/awesome-copycats.git ~/.config/awesome 2> /dev/null
cp ~/CONFIG/awesome/rc.lua ~/.config/awesome/rc.lua
echo " [OK]"

# }}}

# Core generation
#mkdir -p /srv/data/cores
#echo "kernel.core_pattern = /srv/data/cores/%e.%t.%p.core" >> /etc/sysctl.conf
#ulimit -c unimited
