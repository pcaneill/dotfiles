#!/bin/bash

ROOT=$(pwd)

echo -ne "Initializing submodules ..."
script -q -c 'git submodule update --init --recursive' > /dev/null
echo " [OK]"

# {{{ Vim
# {{{ Neovim

mkdir -p ${XDG_CONFIG_HOME:=$HOME/.config}
mkdir -p ${XDG_CONFIG_HOME}/nvim
ln -s  ${ROOT}/vim/nvimrc ${XDG_CONFIG_HOME}/nvim/init.vim

if  [ ${IS_WORK} ]; then
  ln -s  ${ROOT}/vim/nvimrc_work ${XDG_CONFIG_HOME}/nvim/init.vim
fi


# }}}
# {{{ Tern
#
# cd vim/bundle/tern/
# npm install > /dev/null
# cd node_modules/tern/plugin/
# wget https://raw.githubusercontent.com/Slava/tern-meteor/master/meteor.js 2> /dev/null
# if [ $? -ne 0 ]; then
#     echo "Unable to get meteor.js tern plugin"
#     exit
# fi
# cd $ROOT
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
# {{{ Jetbrain

echo -ne "Initializing Jetbrain configuration ..."
ln -s CONFIG/jetbrain/ideavimrc ~/.ideavimrc 2> /dev/null
echo " [OK]"


# }}}
# {{{ Tig

echo -ne "Initializing tig configuration ..."
ln -s CONFIG/tig/tigrc ~/.tigrc 2> /dev/null
echo " [OK]"

# }}}
# {{{ GDB

echo -ne "Initializing gdb configuration ..."
ln -s CONFIG/gdb/gdbinit ~/.gdbinit 2> /dev/null
echo " [OK]"

# }}}
# {{{ Tmux

echo -ne "Initializing tmux configuration ..."
git clone https://github.com/gpakosz/.tmux.git ~/.tmux/ 2> /dev/null
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 2> /dev/null
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf 2> /dev/null
ln -s CONFIG/tmux/tmux.conf.local ~/.tmux.conf.local 2> /dev/null
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
# {{{ Sakora

echo -ne "Initializing sakura configuration ..."
ln -s ~/CONFIG/sakura/sakura.conf ~/.config/sakura/sakura.conf 2> /dev/null
echo " [OK]"

# }}}
# {{{ Personal Scripts

cp ~/CONFIG/bin/switchtouchpad /usr/local/bin/

# }}}
# {{{ Bash / Zsh

chsh -s $(which zsh)

# }}}

# Core generation
#mkdir -p /srv/data/cores
#echo "kernel.core_pattern = /srv/data/cores/%e.%t.%p.core" >> /etc/sysctl.conf
#ulimit -c unimited
