#!/bin/bash

ln -s ~/.vim/.vimrc ~/.vimrc

git submodule init
git submodule update

#cd ~/.vim/bundle/youcompleteme
#git submodule update --init --recursive
#./install.py --clang-completer --omnisharp-completer
