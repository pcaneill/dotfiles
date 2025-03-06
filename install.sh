#!/bin/bash

ROOT=$(pwd)

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
# {{{ Tmux

echo -ne "Initializing tmux configuration ..."
git clone https://github.com/gpakosz/.tmux.git ~/.tmux/ 2> /dev/null
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 2> /dev/null
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf 2> /dev/null
ln -s CONFIG/tmux/tmux.conf.local ~/.tmux.conf.local 2> /dev/null
echo " [OK]"

# }}}
# {{{ Top

echo -ne "Initializing top configuration ..."
ln -s CONFIG/top/toprc ~/.toprc  2> /dev/null
echo " [OK]"

# }}}
# {{{ Bash / Zsh

chsh -s $(which zsh)

# }}}
